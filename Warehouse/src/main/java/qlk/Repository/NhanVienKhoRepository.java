package qlk.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import qlk.Model.NhanVienKho;

public interface NhanVienKhoRepository extends JpaRepository<NhanVienKho, Integer>{
	@Query(value = "SELECT * FROM nhanvienkho i where i.email = :email", nativeQuery = true)
	List<NhanVienKho> findByEmail(@Param("email") String email);
}
