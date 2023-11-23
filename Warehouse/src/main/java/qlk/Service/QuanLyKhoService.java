package qlk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.QuanLyKho;
import qlk.Repository.QuanLyKhoRepository;

@Service
@Transactional
public class QuanLyKhoService {
	@Autowired
	private QuanLyKhoRepository repo;
	
	public List<QuanLyKho> listAll() {
		return repo.findAll();
	}
	
	public void save(QuanLyKho e) {
		repo.save(e);
	}
	
	public QuanLyKho get(int id) {
		return repo.findById(id).get();
	}
	
	public void delete(int id) {
		repo.deleteById(id);
	}
	
	public QuanLyKho getByEmail(String email) {
		List<QuanLyKho> list = repo.findByEmail(email);
		if(list.size() > 0)
			return list.get(0);
		else
			return new QuanLyKho();
	}
}
