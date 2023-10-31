package qlk.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import qlk.Model.TaiKhoan;
 
public interface TaiKhoanRepository extends CrudRepository<TaiKhoan, String> {
 
    @Query("SELECT u FROM TaiKhoan u WHERE u.email = :email")
    public TaiKhoan getUserByEmail(@Param("email") String email);
}