package qlk.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import qlk.Model.SP_XH_id;
import qlk.Model.SanPham_DonXuat;
@Repository
public interface SanPham_DonXuatRepository extends JpaRepository<SanPham_DonXuat, SP_XH_id> {
	@Query(value = "SELECT * FROM sanpham_xuathang i where i.madonxuat = :madonxuat", nativeQuery = true)
	List<SanPham_DonXuat> findByMDX(@Param("madonxuat") int madonxuat);
}
