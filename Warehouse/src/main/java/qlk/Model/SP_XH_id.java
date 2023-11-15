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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + masp;
		result = prime * result + madonxuat;
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
		SP_XH_id other = (SP_XH_id) obj;
		if (masp != other.masp)
			return false;
		if (madonxuat != other.madonxuat)
			return false;
		return true;
	}
	
}
