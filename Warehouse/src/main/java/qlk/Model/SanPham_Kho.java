package qlk.Model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="sanpham_kho")
public class SanPham_Kho {
	@EmbeddedId
	private SP_K_id sp_k;
	private int soluong;
	
	public SanPham_Kho(SP_K_id sp_k, int soluong) {
		super();
		this.sp_k = sp_k;
		this.soluong = soluong;
	}
	
	public SanPham_Kho() {
		super();
	}
	
	public SP_K_id getSP_K() {
		return sp_k;
	}
	
	public void setSP_K(SP_K_id sp_k) {
		this.sp_k = sp_k;
	}
	
	public int getSoLuong() {
		return soluong;
	}
	
	public void setSoLuong(int soluong) {
		this.soluong = soluong;
	}
	
}
