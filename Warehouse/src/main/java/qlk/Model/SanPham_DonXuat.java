package qlk.Model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="sanpham_xuathang")
public class SanPham_DonXuat {
	@EmbeddedId
	private SP_XH_id sp_xh;
	private int soluong;
	private int gia;
	
	public SanPham_DonXuat(SP_XH_id sp_xh, int soluong, int gia) {
		super();
		this.sp_xh = sp_xh;
		this.soluong = soluong;
		this.gia = gia;
	}
	
	public SanPham_DonXuat() {
		super();
	}
	
	public SP_XH_id getSP_XH() {
		return sp_xh;
	}
	
	public void setSP_XH(SP_XH_id sp_xh) {
		this.sp_xh = sp_xh;
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
