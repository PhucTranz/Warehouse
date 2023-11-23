package qlk.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import qlk.Model.Kho;
import qlk.Repository.KhoRepository;

@Service
@Transactional
public class KhoService {
	@Autowired
	private KhoRepository repo;
	
	public List<Kho> listAll() {
		return repo.findAll();
	}
	
	public void save(Kho e) {
		repo.save(e);
	}
	
	public Kho get(int id) {
		return repo.findById(id).get();
	}
	
	public void delete(int id) {
		repo.deleteById(id);
	}
}
