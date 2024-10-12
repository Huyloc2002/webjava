package class_student.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import class_student.dao.CourseDAO;
import class_student.dao.StudentDAO;
import class_student.entities.Course;
import class_student.entities.Student;
@Controller
public class CourseController {
	@Autowired
	private StudentDAO studentDAO;
	@Autowired
	private CourseDAO courseDAO;
@RequestMapping("/course1")
public String course1(Integer page,Model model) {
	Integer itemPerPage = 5;		
	Integer offset;
	if(page==null)
		offset = 0;
	else
		offset = (page-1)*itemPerPage;
	
	List<Course> list = courseDAO.getCousPagination(offset, itemPerPage);
	model.addAttribute("list", list);
	
	Long totals = courseDAO.getTotalStudentsPagination();
	Integer totalPage = (int) (totals/itemPerPage + (totals%itemPerPage==0?0:1));
	
	List<Integer> listPage = new ArrayList();
	for(int i=1;i<=totalPage;i++)
		listPage.add(i);
	model.addAttribute("listPage", listPage);
	
	
	return "course1";
}
@RequestMapping("/initUpdateCourse")
public String initUpdateCourse(@RequestParam("couId")String c, Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Course course = courseDAO.getCourseById(c);
	model.addAttribute("c",course);
	return "updateCourse";
}
@RequestMapping("updateCourse")
public String updateCourse(@ModelAttribute("c")Course c,@RequestParam("imgUrl")MultipartFile imgFile, HttpServletRequest request, Model model) {
	if(imgFile !=null) {
		c.setImage(imgFile.getOriginalFilename());
	}
	boolean course = courseDAO.UpdateCourse(c);
	if(course) {
		String path = request.getServletContext().getRealPath("resources/images");
		File f = new File(path);
		if(imgFile != null) {
			File dest = new File(f.getAbsoluteFile()+"/"+imgFile.getOriginalFilename());
			try {
				if(!dest.exists())
				  Files.write(dest.toPath(), imgFile.getBytes(), StandardOpenOption.CREATE_NEW);
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		model.addAttribute("succ","Sửa Thành Công!");
            List<Course> courses = courseDAO.getCourses();
            model.addAttribute("list",courses);
		return "course1";
	}else {
		model.addAttribute("c",c);
		model.addAttribute("err","Sửa Thất Bại!");	
		return "updateCourse";
	}
}
@RequestMapping("/initInsertCourse")
public String initInsertCourse(Model model) {
	List<Course> courses = courseDAO.getCourses();
	model.addAttribute("list",courses); 
	
  Course c = new Course();
  model.addAttribute("c",c);
	
	return "insertCourse";
}
@RequestMapping("/insertCourse")
public String insertCourse(@Valid @ModelAttribute("c")Course c,BindingResult result,@RequestParam("imgUrl")MultipartFile imgFile, HttpServletRequest request,Model model) {
	if(result.hasErrors()) {
		List<Course> classes = courseDAO.getCourses();
		model.addAttribute("list",classes); 
		model.addAttribute("c", c);
		return "insertCourse";
	}
	
	if(imgFile !=null) {
		c.setImage(imgFile.getOriginalFilename());
	}
	boolean course = courseDAO.InsertCourse(c);
	if(course) {
		String path = request.getServletContext().getRealPath("resources/images");
		File f = new File(path);
		if(imgFile != null) {
			File dest = new File(f.getAbsoluteFile()+"/"+imgFile.getOriginalFilename());
			try {
				if(!dest.exists())
				  Files.write(dest.toPath(), imgFile.getBytes(), StandardOpenOption.CREATE_NEW);
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/course1";
	}else {
		model.addAttribute("c",c);
		model.addAttribute("err","Thêm Mới Thất Bại!");	
		return "insertCourse";
	}
}
@RequestMapping("/deleteCourse")
public String delete(@RequestParam("couId")String couId,Model model) {
boolean course = courseDAO.DeleteCourse(couId);
	if(course) {
            model.addAttribute("succ","xoá Thành Công!");
	}else {
		model.addAttribute("err","Xoá Thất Bại !");
	}
	List<Course> courses = courseDAO.getCourses();
	model.addAttribute("list",courses);
	
	return "course1";
}

@RequestMapping("/search")
public String search(@RequestParam("courseName")String courseName,Model model) {
	List<Course> course = courseDAO.getCousByName(courseName);
	model.addAttribute("list",course);
	return "course1";
}
}
