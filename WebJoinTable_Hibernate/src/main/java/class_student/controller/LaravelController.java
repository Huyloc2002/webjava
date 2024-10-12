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

	import class_student.dao.LaravelDAO;
	import class_student.dao.PhpDAO;
	import class_student.entities.Laravel;
	import class_student.entities.Php;


	@Controller
	public class LaravelController {

		@Autowired
		private LaravelDAO laravelDAO;

		@RequestMapping("/listlaravel")
		public String Laravel(Model model) {

			List<Laravel> laravel = laravelDAO.getLaravels();
			model.addAttribute("list", laravel);

			return "listlaravel";
		}

	}