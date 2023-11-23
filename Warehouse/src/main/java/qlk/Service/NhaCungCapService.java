package qlk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.NhaCungCap;
import qlk.Repository.NhaCungCapRepository;

@Service
@Transactional
public class NhaCungCapService {
	@Autowired
	private NhaCungCapRepository repo;
	
	public List<NhaCungCap> listAll() {
		return repo.findAll();
	}
	
	public void save(NhaCungCap e) {
		repo.save(e);
	}
	
	public NhaCungCap get(int id) {
		return repo.findById(id).get();
	}
	
	public void delete(int id) {
		repo.deleteById(id);
	}
}
