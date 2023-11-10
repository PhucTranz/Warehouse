package qlk.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import qlk.Model.Kho;
@Repository
public interface KhoRepository extends JpaRepository<Kho, Integer> {

}
