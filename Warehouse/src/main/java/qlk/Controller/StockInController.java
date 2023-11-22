package qlk.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import qlk.Model.DonNhapHang;
import qlk.Model.SP_K_id;
import qlk.Model.SP_NH_id;
import qlk.Model.SanPham;
import qlk.Model.SanPham_DonNhap;
import qlk.Model.SanPham_Kho;
import qlk.Service.DonNhapHangService;
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
        		spk.setSoLuong(spk.getSoLuong()+soluong[i]);
        		spkService.save(spk);
        	}else {
        		spkService.save(new SanPham_Kho(sp_k_id, soluong[i]));
        	}
        	SanPham sp = sanphamService.get(id[i]);
        	sp.setSoluong(sp.getSoluong()+soluong[i]);
        	sanphamService.save(sp);
        	spdnService.save(new SanPham_DonNhap(new SP_NH_id(id[i],madonnhap),soluong[i],sanphamService.get(id[i]).getGia()));
        }
       	
        return "redirect:/goods_receipt/"+dnh.getMadonnhap(); 
    }

    @PostMapping("/goods_receipt/{id}")
    public String editKho(@RequestParam String trangthai, @PathVariable("id") int id) {
    	DonNhapHang dnh = dnhService.get(id);
    	if(trangthai.equals("Hoàn thành") || trangthai.equals("Chưa hoàn thành"))
    		dnh.setTrangthai(trangthai);
    	else if(trangthai.equals("Hủy")) {
    		dnh.setTrangthai(trangthai);
    		int makho = nvkService.get(dnh.getManv()).getMakho();
    		List<SanPham_DonNhap> spdn = spdnService.getByMaDN(id);
    		for(SanPham_DonNhap i : spdn) {
    			int masp = i.getSP_NH().getMaSP();
    			SP_K_id sp_k_id = new SP_K_id(masp, makho);
    			SanPham_Kho spk = spkService.get(sp_k_id);
    			spk.setSoLuong(spk.getSoLuong()-i.getSoLuong());
    			
    			SanPham sp = sanphamService.get(masp);
    			sp.setSoluong(sp.getSoluong() - i.getSoLuong());
    			
    			spkService.save(spk);
    			sanphamService.save(sp);
    		}
    	}
    	dnhService.save(dnh);
    	return "redirect:/goods_receipt/"+id; 
    }

    @GetMapping("/goods_receipt/{id}")
    public String viewDetails(Model model, @PathVariable("id") int id) {
    	DonNhapHang dnh = dnhService.get(id);
    	List<SanPham_DonNhap> spdn = spdnService.getByMaDN(dnh.getMadonnhap());
    	List<SanPham> list = new ArrayList<>();
    	for(SanPham_DonNhap i : spdn) {
    		SanPham sp = sanphamService.get(i.getSP_NH().getMaSP());
    		sp.setSoluong(i.getSoLuong());
    		list.add(sp);
    	}
    	model.addAttribute("listP", list);
    	model.addAttribute("dnh", dnh);
        return "goodsReceiptDetail";
    }
}
