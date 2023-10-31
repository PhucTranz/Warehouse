package qlk.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "taikhoan")
public class TaiKhoan {

   @Id
   private String email;
   private String matkhau;
   private String role;
}
