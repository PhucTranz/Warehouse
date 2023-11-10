package qlk.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import qlk.Model.SP_NH_id;
import qlk.Model.SanPham_DonNhap;
@Repository
public interface SanPham_DonNhapRepository extends JpaRepository<SanPham_DonNhap, SP_NH_id> {

}
