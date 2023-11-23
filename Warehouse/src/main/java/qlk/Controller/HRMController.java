package qlk.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import qlk.Model.Kho;
import qlk.Model.NhanVienKho;
import qlk.Model.TaiKhoan;
import qlk.Service.KhoService;
import qlk.Service.NhanVienKhoService;
import qlk.Service.TaiKhoanService;

@Controller
public class HRMController {
    
    @Autowired
    private NhanVienKhoService nvkService;
    
    @Autowired
    private KhoService khoService;
    
    @Autowired
    private TaiKhoanService tkService;

    @RequestMapping("/staff")
    public String viewAllSuppliers(Model model) {
        List<NhanVienKho> list = nvkService.listAll();
        List<Kho> listKho = khoService.listAll();
        model.addAttribute("list", list);
        model.addAttribute("listKho", listKho);
        model.addAttribute("staff", new NhanVienKho());
        return "staffTable";
    }

    @RequestMapping("/staff/{manv}")
    public String staffDetails(@PathVariable(name = "manv") int manv, Model model) {
        model.addAttribute("staff", nvkService.get(manv));
        model.addAttribute("admin", 1);
        return "staffDetails";
    }

    @RequestMapping("/staff/delete/{manv}")
    public String deleteStaff(@PathVariable(name = "manv") int manv, Model model) {
        try {
        	NhanVienKho nvk = nvkService.get(manv);
        	TaiKhoan tk = tkService.get(nvk.getEmail());
            nvkService.delete(manv);
        	tkService.delete(tk.getEmail());
            return "redirect:/staff";
        } catch (Exception e) {
            return "redirect:/staff"; 
        }
    }

    @RequestMapping("/staff/add")
    public String addStaff(Model model) {
    	List<Kho> listKho = khoService.listAll();
        model.addAttribute("nvk", new NhanVienKho());
        model.addAttribute("listKho", listKho);
        return "addStaff";
    }

    @RequestMapping(value = "/staff/update", method = RequestMethod.POST)
    public String viewEditSupplier(@ModelAttribute("staff") NhanVienKho staff) {
        try {
        	
			NhanVienKho nvk = nvkService.get(staff.getManv());
            TaiKhoan tk = tkService.get(nvk.getEmail());
            String email = tk.getEmail();
			nvk.setHoten(staff.getHoten());
            nvk.setDiachi(staff.getDiachi());
            nvk.setNgaysinh(staff.getNgaysinh());
            nvk.setGioitinh(staff.getGioitinh());
            nvk.setSdt(staff.getSdt());
            nvk.setVitrilam(staff.getVitrilam());
            nvk.setLuong(staff.getLuong());
            nvk.setEmail(staff.getEmail());
            nvk.setMakho(nvk.getMakho());
            
            tk.setEmail(nvk.getEmail());
            tkService.save(tk);
            nvkService.save(nvk);
            tkService.delete(email);
		}catch(Exception e) {
			System.out.println(e);
		}
        return "redirect:/staff";
    }

    @RequestMapping(value = "/staff/save", method = RequestMethod.POST)
    public String saveStaff(@ModelAttribute("nvk") NhanVienKho nvk) {
        TaiKhoan tk = new TaiKhoan();
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String pass= encoder.encode("123456");
		tk.setMatkhau(pass);
		tk.setEmail(nvk.getEmail());
		tk.setRole("ROLE_NV");
        tkService.save(tk);
        nvkService.save(nvk);
        return "redirect:/staff/"+nvk.getManv();
    }
    
    @RequestMapping("/staff/reset/{manv}")
    public String resetPassword(@PathVariable(name = "manv") int manv, Model model) {
        try {
        	NhanVienKho nvk = nvkService.get(manv);
        	TaiKhoan tk = tkService.get(nvk.getEmail());
        	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    		String pass= encoder.encode("123456");
    		tk.setMatkhau(pass);
    		tkService.save(tk);
            return "redirect:/staff";
        } catch (Exception e) {
            return "redirect:/staff/"+manv; 
        }
    }
}
