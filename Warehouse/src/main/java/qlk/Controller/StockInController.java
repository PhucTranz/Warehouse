package qlk.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import qlk.Model.Kho;
import qlk.Service.DonNhapHangService;
import qlk.Service.KhoService;

@Controller
public class StockInController {

    @Autowired
    private DonNhapHangService dnhService;

    @GetMapping("/goods_receipt")
    public String getAllKho(Model model) {
        model.addAttribute("list", dnhService.listAll());
        return "listDNH";
    }

//    @GetMapping("/warehouse/{id}")
//    public String detailWarehouse(@PathVariable(name = "id") int id, Model model) {
//        model.addAttribute("warehouse", khoService.get(id));
//        return "warehouseDetails";
//    }
//
//    @GetMapping("/warehouse/add")
//    public String showAddForm(Model model) {
//        model.addAttribute("kho", new Kho());
//        return "createWarehouse";
//    }
//
//    @PostMapping("/save_warehouse")
//    public String addKho(@ModelAttribute("kho") Kho kho) {
//        khoService.save(kho);
//        return "redirect:/warehouse/"; 
//    }
//
//    @PostMapping("/update_warehouse")
//    public String editKho(@ModelAttribute("kho") Kho kho) {
//        Kho kho_temp = khoService.get(kho.getMakho());
//        kho_temp.setDiachi(kho.getDiachi());
//        kho_temp.setTenkho(kho.getTenkho());
//        khoService.save(kho_temp);
//        return "redirect:/warehouse/";
//    }
//
//    @GetMapping("/warehouse/delete/{id}")
//    public String deleteKho(@PathVariable("id") int id) {
//        try {
//            khoService.delete(id);
//            return "redirect:/warehouse/";
//        } catch (Exception e) {
//            // catch foreign key
//            return "";
//        }
//    }
}
