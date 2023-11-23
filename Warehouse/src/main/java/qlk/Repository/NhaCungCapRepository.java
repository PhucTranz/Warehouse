package qlk.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import qlk.Model.NhaCungCap;
@Repository
public interface NhaCungCapRepository extends JpaRepository<NhaCungCap, Integer> {

}
