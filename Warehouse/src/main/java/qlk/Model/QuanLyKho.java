package qlk.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "quanlykho")
public class QuanLyKho {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int manv;
	private String hoten;
	private String ngaysinh;
	private String gioitinh;
	private String sdt;
	private String diachi;
	private int luong;
	private String email;
}
