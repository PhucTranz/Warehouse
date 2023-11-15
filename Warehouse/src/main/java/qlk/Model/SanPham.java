package qlk.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
// import javax.persistence.Transient;

import lombok.Data;

@Data
@Entity
@Table(name = "sanpham")
public class SanPham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int masp;
	private String tensp;
	private String hinhanh;
	private String mau;
	private int size;
	private int soluong;
	private String ngaysx;
	private int gia;
	private int mancc;
	@ManyToOne
	@JoinColumn(name = "mancc", referencedColumnName = "mancc", insertable = false, updatable = false)
	private NhaCungCap nhaCungCap;

}
