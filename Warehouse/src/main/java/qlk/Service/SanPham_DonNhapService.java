package qlk.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.SP_NH_id;
import qlk.Model.SanPham_DonNhap;
import qlk.Repository.SanPham_DonNhapRepository;

@Service
@Transactional
public class SanPham_DonNhapService {
	@Autowired
	private SanPham_DonNhapRepository repo;
	
	public List<SanPham_DonNhap> listAll() {
		return repo.findAll();
	}
	
	public void save(SanPham_DonNhap e) {
		repo.save(e);
	}
	
	public SanPham_DonNhap get(SP_NH_id id) {
		Optional<SanPham_DonNhap> optional = repo.findById(id);
		if (optional.isPresent()) 
			return optional.get();
		return null;
	}
	
	public void delete(SP_NH_id id) {
		repo.deleteById(id);
	}
	
	public List<SanPham_DonNhap> getByMaDN(int madn){
		return repo.findByMDN(madn);
	}
}
