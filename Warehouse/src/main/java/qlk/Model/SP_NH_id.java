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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + masp;
		result = prime * result + madonnhap;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SP_NH_id other = (SP_NH_id) obj;
		if (masp != other.masp)
			return false;
		if (madonnhap != other.madonnhap)
			return false;
		return true;
	}
	
}
