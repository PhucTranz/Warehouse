package qlk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.SP_XH_id;
import qlk.Model.SanPham_DonXuat;
import qlk.Repository.SanPham_DonXuatRepository;

@Service
@Transactional
public class SanPham_DonXuatService {
	@Autowired
	private SanPham_DonXuatRepository repo;
	
	public List<SanPham_DonXuat> listAll() {
		return repo.findAll();
	}
	
	public void save(SanPham_DonXuat e) {
		repo.save(e);
	}
	
	public SanPham_DonXuat get(SP_XH_id id) {
		return repo.findById(id).get();
	}
	
	public void delete(SP_XH_id id) {
		repo.deleteById(id);
	}
	
	public List<SanPham_DonXuat> getByMaDX(int madx){
		return repo.findByMDX(madx);
	}
}
