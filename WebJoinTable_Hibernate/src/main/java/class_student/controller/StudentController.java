package class_student.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import class_student.dao.CourseDAO;
import class_student.dao.StudentDAO;
import class_student.dao.impl.AccountDAOImpl;
import class_student.entities.Account;
import class_student.entities.Course;
import class_student.entities.Student;

import class_student.util.Cipher;
import javax.servlet.http.HttpSession;

@Controller
public class StudentController {
	@Autowired
	AccountDAOImpl accountService;
@Autowired
private StudentDAO studentDAO;
@Autowired
private CourseDAO courseDAO;


@InitBinder
public void initBinder(WebDataBinder binder) {
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
	binder.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
}




@RequestMapping("/detail")
public String detailPro(@RequestParam("couId") String couId, Model model) {
	
	Course cou = courseDAO.getCourseById(couId);
	model.addAttribute("c", cou);
	return "detail";

}
//@RequestMapping("/loginstu")
//public String loginstu(Model model) {
//	return "loginstu";
//}
//dang nhap


//POST: dang-nhap (xử lý đăng nhập)
	@RequestMapping(value = "loginstu", method = RequestMethod.POST)
	public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
		Account acc = accountService.getAccount( username);
		String passMd5 = Cipher.GenerateMD5(password);
		if (acc == null || !acc.getPassword().equals(passMd5)) {
			model.addAttribute("msg", "Thông tin đăng nhập sai");
			model.addAttribute("page", "loginstu");
			return "loginstu";
		}
		HttpSession session = req.getSession();
		session.setMaxInactiveInterval(3600);
		session.setAttribute("userid", acc.getId());
		session.setAttribute("picture", acc.getPicture());
		session.setAttribute("fullname", acc.getFullname());
		return "redirect:/index";
	}

	@RequestMapping(value = "thoat")
	public String logout(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/loginstu";
	}


@RequestMapping(value= {"/admin"})
public String listStudent(Integer page,Model model) {
	Integer itemPerPage = 5;		
	Integer offset;
	if(page==null)
		offset = 0;
	else
		offset = (page-1)*itemPerPage;
	
	List<Student> list = studentDAO.getStudentsPagination(offset, itemPerPage);
	model.addAttribute("list", list);
	
	Long totals = studentDAO.getTotalStudentsPagination();
	Integer totalPage = (int) (totals/itemPerPage + (totals%itemPerPage==0?0:1));
	
	List<Integer> listPage = new ArrayList();
	for(int i=1;i<=totalPage;i++)
		listPage.add(i);
	model.addAttribute("listPage", listPage);
	
	return "admin";
}

@RequestMapping(value= {"/","/index"})
public String listCou(Integer page,Model model) {
	Integer itemPerPage = 4;		
	Integer offset;
	if(page==null)
		offset = 0;
	else
		offset = (page-1)*itemPerPage;
	
	List<Course> list = courseDAO.getCousPagination(offset, itemPerPage); 
	model.addAttribute("list", list);
	
	Long totals = studentDAO.getTotalStudentsPagination();
	Integer totalPage = (int) (totals/itemPerPage + (totals%itemPerPage==0?0:1));
	
	List<Integer> listPage = new ArrayList<Integer>();
	for(int i=1;i<=totalPage;i++)
		listPage.add(i);
	model.addAttribute("listPage", listPage);
	
	return "index";
}

@RequestMapping("/courses")
public String courses(Model model) {
	List<Course> course = courseDAO.getCourses();
	model.addAttribute("list", course);
	return "courses";
}
@RequestMapping("/courses2")
public String courses2(Model model) {
	List<Course> course = courseDAO.getCourses();
	model.addAttribute("list", course);
	return "courses2";
}
//
@RequestMapping("/dkonline")
public String initInsertStudent(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Student s = new Student();
	model.addAttribute("s", s);
	return "dkonline";
}
@RequestMapping("/dkonline1")
public String dkonline1(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Student s = new Student();
	model.addAttribute("s", s);
	return "dkonline1";
}
@RequestMapping("/contact")
public String contact(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Student s = new Student();
	model.addAttribute("s", s);
	return "contact";
}
@RequestMapping("/new")
public String new1(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Student s = new Student();
	model.addAttribute("s", s);
	return "new";
}
//
@RequestMapping("/dkonline3")
public String dkonline3(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Student s = new Student();
	model.addAttribute("s", s);
	return "dkonline3";
}
//
@RequestMapping("/dkonline4")
public String dkonline4(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Student s = new Student();
	model.addAttribute("s", s);
	return "dkonline4";
}
//
@RequestMapping("/dkonline2")
public String dkonline2(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Student s = new Student();
	model.addAttribute("s", s);
	return "dkonline2";
}
//
@RequestMapping("/dkonline5")
public String dkonline5(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	
	Student s = new Student();
	model.addAttribute("s", s);
	return "dkonline5";
}
@RequestMapping("/initInsertStudent")
public String initInsertStu(Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas", classes);
	Student s = new Student();
	model.addAttribute("s", s);
	return "insertStudents";
}
@RequestMapping("/insertStudents")
public String insertStudents(@Valid @ModelAttribute("s")Student s, BindingResult result,@RequestParam("imgUrl")MultipartFile imgFile,
		HttpServletRequest request,Model model) {
	if(result.hasErrors()) {
		List<Course> classes = courseDAO.getCourses();
		model.addAttribute("listClas",classes);
		model.addAttribute("s", s);
		return "insertStudents";
	}
	if(imgFile !=null) {
			s.setImage(imgFile.getOriginalFilename());
		}		
		boolean bl = studentDAO.InsertStudent(s);
		if(bl) {
			String path = request.getServletContext().getRealPath("resources/images");
			File f = new File(path);
			if(imgFile != null) {
				File dest = new File(f.getAbsoluteFile() + "/" + imgFile.getOriginalFilename());
				try {
					if(!dest.exists())
					  Files.write(dest.toPath(), imgFile.getBytes(), StandardOpenOption.CREATE_NEW);
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
				return "redirect:/admin";
		}else {		
			model.addAttribute("s",s);
			return "insertStudents";
		}
	}
@RequestMapping("/insertStudent")
public String insertStudent(@Valid @ModelAttribute("s")Student s, BindingResult result,@RequestParam("imgUrl")MultipartFile imgFile, HttpServletRequest request,Model model) {
	if(result.hasErrors()) {
		List<Course> classes = courseDAO.getCourses();
		model.addAttribute("listClas",classes);
		
		model.addAttribute("s", s);
		return "dkonline1";
	}
		if(imgFile !=null) {
			s.setImage(imgFile.getOriginalFilename());
		}			
		boolean bl = studentDAO.InsertStudent(s);
		if(bl) {
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
			
			model.addAttribute("succ", "Đăng Kí Khoá Học Thành Công !");
			List<Student> students = studentDAO.getStudents();
			model.addAttribute("list", students);
			return "dkonline0";
		}else {
			model.addAttribute("err", "Đăng kí Khoá Học Thất Bại!");
			List<Course> classes = courseDAO.getCourses();
			model.addAttribute("listClas",classes);
			
			model.addAttribute("s",s);
			return "dkonline";
		}
}
//
//@RequestMapping(  value = {"/loginstu"})
//public String loginstu(Model model) {
//	model.addAttribute("page", "loginstu");
//	return "loginstu";
//}
@RequestMapping(  value = {"/loginstu"}, method = RequestMethod.GET)
public String loginstu(Model model) {
	model.addAttribute("page", "loginstu");
	return "loginstu";
}


@RequestMapping("/initUpdateStudent")
public String initUpdateStudent(@RequestParam("studentId")Integer s, Model model) {
	List<Course> classes = courseDAO.getCourses();
	model.addAttribute("listClas",classes);
	
	Student student = studentDAO.getStudentById(s);
	model.addAttribute("s",student);
	
	return "updateStudent";
	
}
@RequestMapping("/updateStudent")
public String updateStudent(@ModelAttribute("s")Student s, Model model) {
	boolean student = studentDAO.UpdateStudent(s);
	if(student) {
		model.addAttribute("succ","Cập Nhật Thành Công!");
		List<Student> students = studentDAO.getStudents();
		model.addAttribute("list",students);
		return "admin";
	}else {
		model.addAttribute("s",s);
		model.addAttribute("err","Cập Nhật Thất Bại!");	
		return "updateStudent";
	}
}

@RequestMapping("/deleteStudent")
public String deleteStudent(@RequestParam("studentId")Integer studentId, Model model) {
	boolean deleteStudent = studentDAO.DeleteStudent(studentId);
	if(deleteStudent) {
            model.addAttribute("succ","xoá Thành Công!");
	}else {
		model.addAttribute("err","Lỗi  Khi Xoá !");
	}
	List<Student> students = studentDAO.getStudents();
	model.addAttribute("list", students);
	return "redirect:/admin";
}
@RequestMapping("/searchByNameCou")
public String searchByNameCou(@RequestParam("courseName")String courseName,Model model) {
	List<Course> course = courseDAO.getCousByName(courseName);
	model.addAttribute("list",course);
	return "index";
	
	
}
@RequestMapping("/searchByName")
public String search(@RequestParam("studentName")String studentName,Model model) {
	List<Student> students = studentDAO.getStudentsByName(studentName);
	model.addAttribute("list",students);
	return "admin";
}
@RequestMapping("/detailStudent")
public String detailStudent(@RequestParam("studentId")Integer studentId, Model model) {
	Student byId = studentDAO.getStudentById(studentId);
	model.addAttribute("s",byId);
	
	return "detailStudent";
}
}
