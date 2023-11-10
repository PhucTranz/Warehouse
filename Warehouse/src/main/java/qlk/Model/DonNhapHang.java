package qlk.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "donnhaphang")
public class DonNhapHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int madonnhap;
	private String ngaynhap;
	private String trangthai;
	private int tongtien;
	private int manv;
}
