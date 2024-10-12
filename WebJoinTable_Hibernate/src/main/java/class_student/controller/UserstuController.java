package class_student.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import class_student.dao.impl.AccountDAOImpl;
import class_student.entities.Account;
import class_student.util.Cipher;
public class UserstuController {
	

@Controller
public class UserController {
	@Autowired
	AccountDAOImpl accountService;

	
	
	//GET: trang-chu 
	
	@RequestMapping(  value = {"/loginstu"}, method = RequestMethod.GET)
	public String loginstu(Model model) {
		model.addAttribute("page", "loginstu");
		return "loginstu";
	}

//	
//	//GET: gioi-thieu 
//	//POST: dang-nhap (xử lý đăng nhập)
	@RequestMapping(value = "loginstu", method = RequestMethod.POST)
	public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
		Account acc = accountService.getAccount(username);
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
	
	//GET: thoat 
	@RequestMapping(value = "thoat")
	public String logout(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/dang-nhap";
	}
}
}
