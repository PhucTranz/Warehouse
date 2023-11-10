package qlk.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import qlk.Model.DonNhapHang;
@Repository
public interface DonNhapHangRepository extends JpaRepository<DonNhapHang, Integer> {

}
