package qlk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.DonXuatHang;
import qlk.Repository.DonXuatHangRepository;

@Service
@Transactional
public class DonXuatHangService {
	@Autowired
	private DonXuatHangRepository repo;
	
	public List<DonXuatHang> listAll() {
		return repo.findAll();
	}
	
	public void save(DonXuatHang e) {
		repo.save(e);
	}
	
	public DonXuatHang get(int id) {
		return repo.findById(id).get();
	}
	
	public void delete(int id) {
		repo.deleteById(id);
	}
}
