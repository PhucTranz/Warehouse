package qlk.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import qlk.Model.Kho;
import qlk.Model.NhanVienKho;
import qlk.Service.KhoService;
import qlk.Service.NhanVienKhoService;

@Controller
public class HRMController {
    
    @Autowired
    private NhanVienKhoService nvkService;
    
    @Autowired
    private KhoService khoService;

    @RequestMapping("/staff")
    public String viewAllSuppliers(Model model) {
        List<NhanVienKho> list = nvkService.listAll();
        List<Kho> listKho = khoService.listAll();
        model.addAttribute("list", list);
        model.addAttribute("listKho", listKho);
        model.addAttribute("staff", new NhanVienKho());
        return "staffTable";
    }

//    @RequestMapping("/supplier/{id}")
//    public String supplierDetails(@PathVariable(name = "id") int id, Model model) {
//        model.addAttribute("supplier", nhaCungCapService.get(id));
//        return "supplierDetails";
//    }
//
//    @RequestMapping("/supplier/delete/{id}")
//    public String deleteSupplier(@PathVariable(name = "id") int id, Model model) {
//        try {
//            nhaCungCapService.delete(id);
//            return "redirect:/supplier";
//        } catch (Exception e) {
//            return "redirect:/supplier"; 
//        }
//    }
//
//    @RequestMapping("/supplier/add")
//    public String addSupplier(Model model) {
//        model.addAttribute("supplier", new NhaCungCap());
//        return "createSupplier";
//    }
//
//    @RequestMapping(value = "/supplier/update", method = RequestMethod.POST)
//    public String viewEditSupplier(@ModelAttribute("supplier") NhaCungCap ncc) {
//        try {
//			NhaCungCap ncc_update = nhaCungCapService.get(ncc.getMancc());
//            ncc_update.setDiachi(ncc.getDiachi());
//            ncc_update.setSdt(ncc.getSdt());
//            ncc_update.setTenncc(ncc.getTenncc());
//			nhaCungCapService.save(ncc_update);
//		}catch(Exception e) {
//			;
//		}
//        return "redirect:/supplier";
//    }
//
//    @RequestMapping(value = "/save_supplier", method = RequestMethod.POST)
//    public String saveSupplier(@ModelAttribute("supplier") NhaCungCap ncc) {
//        nhaCungCapService.save(ncc);
//        return "redirect:/supplier";
//    }
}
