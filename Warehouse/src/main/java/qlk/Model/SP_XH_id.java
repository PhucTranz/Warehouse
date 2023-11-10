package qlk.Model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class SP_XH_id implements Serializable{
	private int masp;
	private int madonxuat;
	
	public SP_XH_id() {
		super();
	}
	
	public SP_XH_id(int masp, int madonxuat) {
		super();
		this.masp = masp;
		this.madonxuat = madonxuat;
	}
	
	public int getMaSP() {
		return masp;
	}
	
	public void setMaSP(int masp) {
		this.masp = masp;
	}
	
	public int getMaDonXuat() {
		return madonxuat;
	}
	
	public void setMaDonXuat(int madonxuat) {
		this.madonxuat = madonxuat;
	}
	
}
