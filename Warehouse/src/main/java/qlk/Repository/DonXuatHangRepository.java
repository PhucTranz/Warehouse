package qlk.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import qlk.Model.DonXuatHang;
@Repository
public interface DonXuatHangRepository extends JpaRepository<DonXuatHang, Integer> {

}
