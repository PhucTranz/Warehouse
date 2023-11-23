package qlk.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "donxuathang")
public class DonXuatHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int madonxuat;
	private String ngayxuat;
	private String diachi;
	private String trangthai;
	private int tongtien;
	private int manv;
}
