package qlk.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "kho")
public class Kho {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int makho;
	private String tenkho;
	private String diachi;
}
