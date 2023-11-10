package qlk.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import qlk.Model.SP_K_id;
import qlk.Model.SanPham_Kho;
@Repository
public interface SanPham_KhoRepository extends JpaRepository<SanPham_Kho, SP_K_id> {

}
