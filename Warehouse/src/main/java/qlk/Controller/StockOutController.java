package qlk.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import qlk.Model.DonXuatHang;
import qlk.Model.SP_K_id;
import qlk.Model.SP_XH_id;
import qlk.Model.SanPham;
import qlk.Model.SanPham_DonXuat;
import qlk.Model.SanPham_Kho;
import qlk.Service.DonXuatHangService;
import qlk.Service.NhanVienKhoService;
import qlk.Service.SanPhamService;
import qlk.Service.SanPham_DonXuatService;
import qlk.Service.SanPham_KhoService;

@Controller
public class StockOutController {
	
	@Autowired
	private NhanVienKhoService nvkService;
	
	@Autowired
	private SanPhamService sanphamService;
	
    @Autowired
    private DonXuatHangService dxhService;
    
    @Autowired
	private SanPham_KhoService spkService;
    
    @Autowired
	private SanPham_DonXuatService spdxService;

    @GetMapping("/goods_issue")
    public String getAll(Model model) {
        model.addAttribute("list", dxhService.listAll());
        return "listDXH";
    }
    
    @GetMapping("/create_goods_issue")
    public String createGoodsRecrept(Model model, HttpServletRequest request) {
    	List<SanPham> list = new ArrayList<>();
    	int makho = nvkService.getByEmail(request.getUserPrincipal().getName()).getMakho();
    	List<SanPham_Kho> spk = spkService.getByMaKho(makho);
    	for(SanPham_Kho i : spk) {
    		SanPham sp = sanphamService.get(i.getSP_K().getMaSP());
    		sp.setSoluong(i.getSoLuong());
    		list.add(sp);
    	}
    	model.addAttribute("listP", list);
        model.addAttribute("phieu", new DonXuatHang());
        return "createGoodsIssueNote";
    }

    @PostMapping("/goods_issue/save")
    public String saveGoodsReceipt(@ModelAttribute("phieu") DonXuatHang dxh, @RequestParam Integer[] soluong,
    									@RequestParam Integer[] id, HttpServletRequest request) {
        int manv = nvkService.getByEmail(request.getUserPrincipal().getName()).getManv();
        int makho = nvkService.getByEmail(request.getUserPrincipal().getName()).getMakho();
        dxh.setManv(manv);
        dxhService.save(dxh);
       
        int madonxuat = dxhService.getLastItem().getMadonxuat();
        
        for(int i = 0; i < id.length; i++) {
        	SP_K_id sp_k_id = new SP_K_id(id[i],makho);
        	SanPham_Kho spk = spkService.get(sp_k_id);
        	spk.setSoLuong(spk.getSoLuong()-soluong[i]);
        	spkService.save(spk);
       
        	SanPham sp = sanphamService.get(id[i]);
        	sp.setSoluong(sp.getSoluong()-soluong[i]);
        	sanphamService.save(sp);
        	spdxService.save(new SanPham_DonXuat(new SP_XH_id(id[i],madonxuat),soluong[i],sanphamService.get(id[i]).getGia()));
        }
       	
        return "redirect:/goods_issue/"+dxh.getMadonxuat(); 
    }

    @PostMapping("/goods_issue/{id}")
    public String editKho(@RequestParam String trangthai, @PathVariable("id") int id) {
    	DonXuatHang dxh = dxhService.get(id);
    	if(trangthai.equals("Hoàn thành") || trangthai.equals("Chưa hoàn thành"))
    		dxh.setTrangthai(trangthai);
    	else if(trangthai.equals("Hủy")) {
    		dxh.setTrangthai(trangthai);
    		int makho = nvkService.get(dxh.getManv()).getMakho();
    		List<SanPham_DonXuat> spdx = spdxService.getByMaDX(id);
    		for(SanPham_DonXuat i : spdx) {
    			int masp = i.getSP_XH().getMaSP();
    			SP_K_id sp_k_id = new SP_K_id(masp, makho);
    			SanPham_Kho spk = spkService.get(sp_k_id);
    			spk.setSoLuong(spk.getSoLuong()+i.getSoLuong());
    			
    			SanPham sp = sanphamService.get(masp);
    			sp.setSoluong(sp.getSoluong() + i.getSoLuong());
    			
    			spkService.save(spk);
    			sanphamService.save(sp);
    		}
    	}
    	dxhService.save(dxh);
    	return "redirect:/goods_issue/"+id; 
    }

    @GetMapping("/goods_issue/{id}")
    public String viewDetails(Model model, @PathVariable("id") int id) {
    	DonXuatHang dxh = dxhService.get(id);
    	List<SanPham_DonXuat> spdx = spdxService.getByMaDX(dxh.getMadonxuat());
    	List<SanPham> list = new ArrayList<>();
    	for(SanPham_DonXuat i : spdx) {
    		SanPham sp = sanphamService.get(i.getSP_XH().getMaSP());
    		sp.setSoluong(i.getSoLuong());
    		list.add(sp);
    	}
    	model.addAttribute("listP", list);
    	model.addAttribute("dxh", dxh);
        return "goodsIssueNoteDetail";
    }
}
