package qlk.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import qlk.Model.QuanLyKho;

public interface QuanLyKhoRepository extends JpaRepository<QuanLyKho, Integer>{
	@Query(value = "SELECT * FROM quanlykho i where i.email = :email", nativeQuery = true)
	List<QuanLyKho> findByEmail(@Param("email") String email);
}
