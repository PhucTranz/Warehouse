package qlk.Controller;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.util.StringUtils;

import qlk.Model.NhaCungCap;
import qlk.Model.SanPham;
import qlk.Service.NhaCungCapService;
import qlk.Service.SanPhamService;

@Controller
public class ProductController {
	@Autowired
	private SanPhamService sanphamService;
	
	@Autowired
	private NhaCungCapService nhaCungCapService;
	
	@Value("${upload.path}")
    private String uploadPath;
	
	@RequestMapping("/product")
	public String viewAllProduct(Model model) {
		List<SanPham> list = sanphamService.listAll();
		model.addAttribute("listNCC", nhaCungCapService.listAll());
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
	
	@RequestMapping("/add_product")
	public String addProduct(Model model) {
		List<NhaCungCap> list = nhaCungCapService.listAll();
		model.addAttribute("list", list);
		model.addAttribute("product", new SanPham());
		return "createProduct";
	}
	
	@RequestMapping(value = "/update_product", method = RequestMethod.POST)
	public String viewEditProduct(@ModelAttribute("product") SanPham p, 
								@RequestParam("file") MultipartFile file) {
		try {
			SanPham sp = sanphamService.get(p.getMasp());
			if (file != null && !file.isEmpty()) {
				String fileName = StringUtils.cleanPath(file.getOriginalFilename());
                Path uploadPath = Paths.get(this.uploadPath);
                if (!Files.exists(uploadPath)) {
                    Files.createDirectories(uploadPath);
                }

                try (InputStream inputStream = file.getInputStream()) {
                    Files.copy(inputStream, uploadPath.resolve(fileName),
                            StandardCopyOption.REPLACE_EXISTING);
                }
                sp.setHinhanh(fileName);
			}
			sp.setGia(p.getGia());
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
	
	@RequestMapping(value = "/save_product", method = RequestMethod.POST)
	public String saveAccount(@ModelAttribute("product") SanPham sp, 
								@RequestParam("file") MultipartFile file) {
		if (file != null && !file.isEmpty()) {
            try {
                String fileName = StringUtils.cleanPath(file.getOriginalFilename());
                Path uploadPath = Paths.get(this.uploadPath);
                if (!Files.exists(uploadPath)) {
                    Files.createDirectories(uploadPath);
                }

                try (InputStream inputStream = file.getInputStream()) {
                    Files.copy(inputStream, uploadPath.resolve(fileName),
                            StandardCopyOption.REPLACE_EXISTING);
                }
                sp.setHinhanh(fileName);
                sanphamService.save(sp);
            } catch (Exception e) {
                e.printStackTrace();  
            }
        }
		return "redirect:/product";
	}
}
