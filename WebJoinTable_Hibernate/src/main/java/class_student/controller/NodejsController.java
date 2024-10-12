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


import class_student.entities.Php;
import class_student.dao.NodejsDAO;
import class_student.entities.Nodejs;

@Controller
public class NodejsController {

	@Autowired
	private NodejsDAO nodejsDAO;

	@RequestMapping("/listNodejs")
	public String Nodejs(Model model) {

		List<Nodejs> nodejs = nodejsDAO.getNodejs();
		model.addAttribute("list", nodejs);

		return "listNodejs";
	}

}