package qlk.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import qlk.MyUserDetails;
import qlk.Model.TaiKhoan;
import qlk.Service.NhanVienKhoService;
import qlk.Service.QuanLyKhoService;
import qlk.Service.TaiKhoanService;

@Controller
public class AppController {
	@Autowired
	private QuanLyKhoService qlkService;
	
	@Autowired
	private NhanVienKhoService nvkService;
	
	@Autowired
	private TaiKhoanService tkService;
	
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
		if(role.equals("ROLE_ADMIN")) {
			name = qlkService.getByEmail(request.getUserPrincipal().getName()).getHoten();
			session.setAttribute("manv", qlkService.getByEmail(request.getUserPrincipal().getName()).getManv());
		}
		else {
			name = nvkService.getByEmail(request.getUserPrincipal().getName()).getHoten();
			session.setAttribute("manv", nvkService.getByEmail(request.getUserPrincipal().getName()).getManv());
		}
		
		session.setAttribute("name", name);
		return "home";
	}
	
    @RequestMapping("/profile")
    public String profile(Model model, HttpSession session) {
    	MyUserDetails u = (MyUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String role = u.getRole();
    	int manv = (int) session.getAttribute("manv");
		if(role.equals("ROLE_ADMIN")) {
			model.addAttribute("staff", qlkService.get(manv));
			return "profile";
		}
		model.addAttribute("staff", nvkService.get(manv));
        return "staffDetails";
    }
    
    @RequestMapping("/change_password")
    public String changePasswordPage(Model model) {
        return "changePassword";
    }
    
    @PostMapping("/change_password")
    public String changePassword(Model model, @RequestParam String password, @RequestParam String newpassword, @RequestParam String cfpassword, HttpServletRequest request) {
    	MyUserDetails u = (MyUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String pass = u.getPassword();
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(password, pass)) {
			if(newpassword.equals(cfpassword)) {
				TaiKhoan user = tkService.get(request.getUserPrincipal().getName());
				user.setMatkhau(encoder.encode(newpassword));
				tkService.save(user);
				return "redirect:/";
			}else {
				model.addAttribute("errorMessage", "Xác nhận mật khẩu chưa chính xác");
			}
		}else {
			model.addAttribute("errorMessage", "Sai mật khẩu");
		}
    	return "changepassword";
    }
}
