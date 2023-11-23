package qlk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.SanPham;
import qlk.Repository.SanPhamRepository;

@Service
@Transactional
public class SanPhamService {
	@Autowired
	private SanPhamRepository repo;
	
	public List<SanPham> listAll() {
		return repo.findAll();
	}
	
	public void save(SanPham e) {
		repo.save(e);
	}
	
	public SanPham get(int id) {
		return repo.findById(id).get();
	}
	
	public void delete(int id) {
		repo.deleteById(id);
	}
}
