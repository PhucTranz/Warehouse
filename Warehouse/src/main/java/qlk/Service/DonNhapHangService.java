package qlk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.DonNhapHang;
import qlk.Repository.DonNhapHangRepository;

@Service
@Transactional
public class DonNhapHangService {
	@Autowired
	private DonNhapHangRepository repo;
	
	public List<DonNhapHang> listAll() {
		return repo.findAll();
	}
	
	public void save(DonNhapHang e) {
		repo.save(e);
	}
	
	public DonNhapHang get(int id) {
		return repo.findById(id).get();
	}
	
	public void delete(int id) {
		repo.deleteById(id);
	}
	
	public DonNhapHang getLastItem() {
		List<DonNhapHang> listDNH = repo.findAll();
		return listDNH.get(listDNH.size()-1);
	}
}
