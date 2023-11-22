package qlk.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import qlk.Model.SP_NH_id;
import qlk.Model.SanPham_DonNhap;
@Repository
public interface SanPham_DonNhapRepository extends JpaRepository<SanPham_DonNhap, SP_NH_id> {
	@Query(value = "SELECT * FROM sanpham_nhaphang i where i.madonnhap = :madonnhap", nativeQuery = true)
	List<SanPham_DonNhap> findByMDN(@Param("madonnhap") int madonnhap);
}
