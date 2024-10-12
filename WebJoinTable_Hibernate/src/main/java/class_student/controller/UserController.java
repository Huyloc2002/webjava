package class_student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import class_student.entities.User;
import class_student.service.UserService;

@Controller
@RequestMapping("/admin")
public class UserController {
	 @Autowired
	    private UserService userService;

	 @GetMapping("/register")
	    public String showRegistrationForm(Model model) {
	        model.addAttribute("user", new User());
	        return "register";
	    }	
	
	    @PostMapping("/register")
	    public String registerUser(@ModelAttribute("user") User user) {
	        userService.save(user);
	        return "redirect:/login";
	    }	
	    @GetMapping("/login")
	    public String showLoginForm() {
	        return "login";
	    }

	    @PostMapping("/login")
	    public String loginUser(@RequestParam String userName, @RequestParam String passWord, Model model) {
	        User user = userService.findByUsername(userName);
	        if (user != null && user.getPassWord().equals(passWord)) {
	            model.addAttribute("user", user);
	            return "admin";
	        }
	        return "login";
	    }
	
	
	@RequestMapping("/admin")
	public String userPage(Model model) {
		model.addAttribute("mess", "Welcome user page");
		return "admin";
	}
// ...
}