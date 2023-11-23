package qlk.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import qlk.Model.Kho;
import qlk.Model.NhaCungCap;
import qlk.Model.SanPham;
import qlk.Model.SanPham_Kho;
import qlk.Service.KhoService;
import qlk.Service.SanPhamService;
import qlk.Service.SanPham_KhoService;

@Controller
public class WarehouseController {

    @Autowired
    private KhoService khoService;
    
    @Autowired
    private SanPham_KhoService spkService;
    
    @Autowired
    private SanPhamService spService;

    @GetMapping("/warehouse")
    public String getAllKho(Model model) {
        model.addAttribute("listKho", khoService.listAll());
		model.addAttribute("warehouse", new Kho());
        return "warehouseTable";
    }

    @GetMapping("/warehouse/{id}")
    public String detailWarehouse(@PathVariable(name = "id") int id, Model model) {
        List<SanPham> listP = new ArrayList<>();
        List<NhaCungCap> listNCC = new ArrayList<>();
        List<SanPham_Kho> spk = spkService.getByMaKho(id);
        for(SanPham_Kho i : spk) {
        	SanPham sp = spService.get(i.getSP_K().getMaSP());
        	sp.setSoluong(i.getSoLuong());
        	listP.add(sp);
        	if(!listNCC.contains(sp.getNhaCungCap()))
        		listNCC.add(sp.getNhaCungCap());
        }
        
        model.addAttribute("warehouse", khoService.get(id));
        model.addAttribute("listP", listP);
        model.addAttribute("listNCC", listNCC);
        return "warehouseDetails";
    }

    @GetMapping("/warehouse/add")
    public String showAddForm(Model model) {
        model.addAttribute("kho", new Kho());
        return "createWarehouse";
    }

    @PostMapping("/save_warehouse")
    public String addKho(@ModelAttribute("kho") Kho kho) {
        khoService.save(kho);
        return "redirect:/warehouse/"; 
    }

    @PostMapping("/update_warehouse")
    public String editKho(@ModelAttribute("kho") Kho kho) {
        Kho kho_temp = khoService.get(kho.getMakho());
        kho_temp.setDiachi(kho.getDiachi());
        kho_temp.setTenkho(kho.getTenkho());
        khoService.save(kho_temp);
        return "redirect:/warehouse/";
    }

    @GetMapping("/warehouse/delete/{id}")
    public String deleteKho(@PathVariable("id") int id) {
        try {
            khoService.delete(id);
            return "redirect:/warehouse/";
        } catch (Exception e) {
            // catch foreign key
            return "";
        }
    }
}
