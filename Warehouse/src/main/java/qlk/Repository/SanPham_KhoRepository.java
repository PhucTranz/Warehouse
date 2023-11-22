package qlk.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import qlk.Model.SP_K_id;
import qlk.Model.SanPham_Kho;
@Repository
public interface SanPham_KhoRepository extends JpaRepository<SanPham_Kho, SP_K_id> {
	@Query(value = "SELECT * FROM sanpham_kho i where i.makho = :makho", nativeQuery = true)
	List<SanPham_Kho> findByMK(@Param("makho") int makho);
}
