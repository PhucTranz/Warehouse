package qlk.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import qlk.MyUserDetails;
import qlk.Service.TaiKhoanService;

@Controller
public class AppController {
	@Autowired
	private TaiKhoanService taiKhoanservice;
	
	//Hien thi trang login
	@RequestMapping("/login")
	public String viewLoginPage(Model model) {
		return "login";
	}
	
	//Thong bao sai tai khoan or mat khau
	@RequestMapping("/loginerror")
	public String LoginError(Model model) {
		model.addAttribute("errorMessage", "Sai tài khoản hoặc mật khẩu");
		return "login";
	}
	
	//Hien thi trang chu
	@RequestMapping("/home")
	public String viewHomePage(Model model) {
		String role="";
		try {
			MyUserDetails u = (MyUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			role = u.getRole();
		}catch(Exception e) {
			;
		}
		if(role.equals("ROLE_ADMIN"))
			return "home";
		return "sthome";
	}
}
