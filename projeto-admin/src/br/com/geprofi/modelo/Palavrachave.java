package br.com.geprofi.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Palavrachave {
 
	@Id @GeneratedValue
	private int codPalavraChave;
	private int codProfessor;
	private String palavra;

	public int getCodPalavraChave() {
		return codPalavraChave;
	}
	public void setCodPalavraChave(int codPalavraChave) {
		this.codPalavraChave = codPalavraChave;
	}
	public int getCodProfessor() {
		return codProfessor;
	}
	public void setCodProfessor(int codProfessor) {
		this.codProfessor = codProfessor;
	}
	public String getPalavra() {
		return palavra;
	}
	public void setPalavra(String palavra) {
		this.palavra = palavra;
	}
	
	
}
