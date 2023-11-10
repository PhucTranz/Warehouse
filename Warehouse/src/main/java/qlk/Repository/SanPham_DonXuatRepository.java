package qlk.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import qlk.Model.SP_XH_id;
import qlk.Model.SanPham_DonXuat;
@Repository
public interface SanPham_DonXuatRepository extends JpaRepository<SanPham_DonXuat, SP_XH_id> {

}
