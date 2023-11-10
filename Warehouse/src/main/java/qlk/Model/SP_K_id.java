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
	
}
