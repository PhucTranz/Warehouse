package qlk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.NhanVienKho;
import qlk.Repository.NhanVienKhoRepository;

@Service
@Transactional
public class NhanVienKhoService {
	@Autowired
	private NhanVienKhoRepository repo;
	
	public List<NhanVienKho> listAll() {
		return repo.findAll();
	}
	
	public void save(NhanVienKho e) {
		repo.save(e);
	}
	
	public NhanVienKho get(int id) {
		return repo.findById(id).get();
	}
	
	public void delete(int id) {
		repo.deleteById(id);
	}
	
	public NhanVienKho getByEmail(String email) {
		List<NhanVienKho> list = repo.findByEmail(email);
		if(list.size() > 0)
			return list.get(0);
		else
			return new NhanVienKho();
	}
}
