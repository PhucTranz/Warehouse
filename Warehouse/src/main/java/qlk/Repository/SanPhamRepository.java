package qlk.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import qlk.Model.SanPham;
@Repository
public interface SanPhamRepository extends JpaRepository<SanPham, Integer> {

}
