package qlk.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.SP_K_id;
import qlk.Model.SanPham_Kho;
import qlk.Repository.SanPham_KhoRepository;

@Service
@Transactional
public class SanPham_KhoService {
	@Autowired
	private SanPham_KhoRepository repo;
	
	public List<SanPham_Kho> listAll() {
		return repo.findAll();
	}
	
	public void save(SanPham_Kho e) {
		repo.save(e);
	}
	
	public SanPham_Kho get(SP_K_id id) {
		Optional<SanPham_Kho> optional = repo.findById(id);
		if (optional.isPresent()) 
			return optional.get();
		return null;
	}
	
	public void delete(SP_K_id id) {
		repo.deleteById(id);
	}
	
	public List<SanPham_Kho> getByMaKho(int mk){
		return repo.findByMK(mk);
	}
}
