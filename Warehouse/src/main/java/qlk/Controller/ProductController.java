package qlk.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import qlk.Model.SanPham;
import qlk.Service.SanPhamService;

@Controller
public class ProductController {
	@Autowired
	private SanPhamService sanphamService;
	
	@RequestMapping("/product")
	public String viewAllProduct(Model model) {
		List<SanPham> list = sanphamService.listAll();
		model.addAttribute("listProduct", list);
		model.addAttribute("product", new SanPham());
		return "productTable";
	}
	
	@RequestMapping("/product/{id}")
	public String productDetails(@PathVariable(name = "id") int id, Model model) {
		model.addAttribute("product", sanphamService.get(id));
		return "productDetails";		
	}
	
	@RequestMapping("/product/delete/{id}")
	public String deleteProduct(@PathVariable(name = "id") int id) {
		sanphamService.delete(id);
		return "redirect:/product";		
	}
	
	@RequestMapping(value = "admin/updateAccount", method = RequestMethod.POST)
	public String editProduct(@ModelAttribute("product") SanPham p, Model model) {
		try {
			SanPham sp = sanphamService.get(p.getMasp());
			sp.setGia(p.getGia());
			sp.setHinhanh(p.getHinhanh());
			sp.setMancc(p.getMancc());
			sp.setMau(p.getMau());
			sp.setSoluong(p.getSoluong());
			sp.setSize(p.getSize());
			sp.setNgaysx(p.getNgaysx());
			sp.setTensp(p.getTensp());
			sanphamService.save(sp);
		}catch(Exception e) {
			;
		}
		return "redirect:/product";
	}
}
