package qlk.Service;

import java.util.List;

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
		return repo.findById(id).get();
	}
	
	public void delete(SP_K_id id) {
		repo.deleteById(id);
	}
}
