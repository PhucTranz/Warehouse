package qlk.Model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class SP_NH_id implements Serializable{
	private int masp;
	private int madonnhap;
	
	public SP_NH_id() {
		super();
	}
	
	public SP_NH_id(int masp, int madonnhap) {
		super();
		this.masp = masp;
		this.madonnhap = madonnhap;
	}
	
	public int getMaSP() {
		return masp;
	}
	
	public void setMaSP(int masp) {
		this.masp = masp;
	}
	
	public int getMaDonNhap() {
		return madonnhap;
	}
	
	public void setMaDonNhap(int madonnhap) {
		this.madonnhap = madonnhap;
	}
	
}
