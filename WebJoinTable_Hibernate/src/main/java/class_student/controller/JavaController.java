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
import class_student.dao.JavaDAO;
import class_student.dao.PhpDAO;
import class_student.dao.StudentDAO;
import class_student.entities.Course;
import class_student.entities.Java;
import class_student.entities.Php;
import class_student.entities.Student;

@Controller
public class JavaController {
	@Autowired
	private StudentDAO studentDAO;
	@Autowired
	private JavaDAO javaDAO;

	@RequestMapping("/listljava")
	public String php(Model model) {

		List<Java> java = javaDAO.getJavas();
		model.addAttribute("list", java);

		return "listljava";
	}

}