package qlk.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import qlk.MyUserDetails;
import qlk.Service.NhanVienKhoService;
import qlk.Service.QuanLyKhoService;

@Controller
public class AppController {
	@Autowired
	private QuanLyKhoService qlkService;
	
	@Autowired
	private NhanVienKhoService nvkService;
	
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
	@RequestMapping("/")
	public String viewHomePage(Model model, HttpServletRequest request, HttpSession session) {
		String role="";
		try {
			MyUserDetails u = (MyUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			role = u.getRole();
		}catch(Exception e) {
			;
		}
		String name = "";
		if(role.equals("ROLE_ADMIN")) 
			name = qlkService.getByEmail(request.getUserPrincipal().getName()).getHoten();
		else
			name = nvkService.getByEmail(request.getUserPrincipal().getName()).getHoten();
		
		session.setAttribute("name", name);
		return "home";
	}
}
