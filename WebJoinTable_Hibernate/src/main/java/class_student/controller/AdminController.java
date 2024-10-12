package class_student.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import class_student.entities.CustomUserDetails;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("/welcome")
	public String adminPage(Model model, HttpSession session) {
		model.addAttribute("mess", "Welcome to admin page");
		CustomUserDetails user = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal();
		session.setAttribute("user", user);
		return "admin";
	}
}