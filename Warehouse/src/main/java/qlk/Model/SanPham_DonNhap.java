package qlk.Model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="sanpham_nhaphang")
public class SanPham_DonNhap {
	@EmbeddedId
	private SP_NH_id sp_nh;
	private int soluong;
	private int gia;
	
	public SanPham_DonNhap(SP_NH_id sp_nh, int soluong, int gia) {
		super();
		this.sp_nh = sp_nh;
		this.soluong = soluong;
		this.gia = gia;
	}
	
	public SanPham_DonNhap() {
		super();
	}
	
	public SP_NH_id getSP_NH() {
		return sp_nh;
	}
	
	public void setSP_NH(SP_NH_id sp_nh) {
		this.sp_nh = sp_nh;
	}
	
	public int getSoLuong() {
		return soluong;
	}
	
	public void setSoLuong(int soluong) {
		this.soluong = soluong;
	}
	
	public int getGia() {
		return gia;
	}
	
	public void setGia(int gia) {
		this.gia = gia;
	}
	
}
