package qlk.Controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import qlk.Model.DonNhapHang;
import qlk.Model.Kho;
import qlk.Model.SP_K_id;
import qlk.Model.SP_NH_id;
import qlk.Model.SanPham;
import qlk.Model.SanPham_DonNhap;
import qlk.Model.SanPham_Kho;
import qlk.Service.DonNhapHangService;
import qlk.Service.KhoService;
import qlk.Service.NhanVienKhoService;
import qlk.Service.SanPhamService;
import qlk.Service.SanPham_DonNhapService;
import qlk.Service.SanPham_KhoService;

@Controller
public class StockInController {
	
	@Autowired
	private NhanVienKhoService nvkService;
	
	@Autowired
	private SanPhamService sanphamService;
	
    @Autowired
    private DonNhapHangService dnhService;
    
    @Autowired
	private SanPham_KhoService spkService;
    
    @Autowired
	private SanPham_DonNhapService spdnService;

    @GetMapping("/goods_receipt")
    public String getAll(Model model) {
        model.addAttribute("list", dnhService.listAll());
        return "listDNH";
    }
    
    @GetMapping("/goods_receipt/create")
    public String createGoodsRecrept(Model model) {
    	List<SanPham> list = sanphamService.listAll();
    	model.addAttribute("listP", list);
        model.addAttribute("phieu", new DonNhapHang());
        return "createGoodsReceipt";
    }

    @PostMapping("/goods_receipt/save")
    public String saveGoodsReceipt(@ModelAttribute("phieu") DonNhapHang dnh, @RequestParam Integer[] soluong,
    									@RequestParam Integer[] id, HttpServletRequest request) {
        int manv = nvkService.getByEmail(request.getUserPrincipal().getName()).getManv();
        int makho = nvkService.getByEmail(request.getUserPrincipal().getName()).getMakho();
        dnh.setManv(manv);
        dnhService.save(dnh);
       
        int madonnhap = dnhService.getLastItem().getMadonnhap();
        
        for(int i = 0; i < id.length; i++) {
        	SP_K_id sp_k_id = new SP_K_id(id[i],makho);
        	SanPham_Kho spk = spkService.get(sp_k_id);
        	if(spk != null) {
        		System.out.println(spk);
        		spk.setSoLuong(spk.getSoLuong()+soluong[i]);
        		spkService.save(spk);
        	}else {
        		spkService.save(new SanPham_Kho(sp_k_id, soluong[i]));
        	}
        	
        	spdnService.save(new SanPham_DonNhap(new SP_NH_id(id[i],madonnhap),soluong[i],sanphamService.get(id[i]).getGia()));
        }
       	
        return "redirect:/goods_receipt"; 
    }
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
