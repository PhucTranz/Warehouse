package qlk.Model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class SP_K_id implements Serializable{
	private int masp;
	private int makho;
	
	public SP_K_id() {
		super();
	}
	
	public SP_K_id(int masp, int makho) {
		super();
		this.masp = masp;
		this.makho = makho;
	}
	
	public int getMaSP() {
		return masp;
	}
	
	public void setMaSP(int masp) {
		this.masp = masp;
	}
	
	public int getMaKho() {
		return makho;
	}
	
	public void setMaKho(int makho) {
		this.makho = makho;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + masp;
		result = prime * result + makho;
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
		SP_K_id other = (SP_K_id) obj;
		if (masp != other.masp)
			return false;
		if (makho != other.makho)
			return false;
		return true;
	}
	
}
