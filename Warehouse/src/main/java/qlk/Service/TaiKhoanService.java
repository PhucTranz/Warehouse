package qlk.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.TaiKhoan;
import qlk.Repository.TaiKhoanRepository;

@Service
@Transactional
public class TaiKhoanService {

	@Autowired
	private TaiKhoanRepository repo;
	
	public List<TaiKhoan> listAll() {
		return (List<TaiKhoan>) repo.findAll();
	}
	
	public void save(TaiKhoan e) {
		repo.save(e);
	}
	
//	public TaiKhoan get(int id) {
//		return repo.find(id).get();
//	}
	
//	public void delete(int id) {
//		repo.deleteById(id);
//	}
}
