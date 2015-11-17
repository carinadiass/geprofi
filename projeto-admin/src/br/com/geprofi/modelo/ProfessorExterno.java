package br.com.geprofi.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class ProfessorExterno {
	
	@Id @GeneratedValue
	private int codProfessorExterno;
	
	private int codBanca;
	private String nome;
	private String email;
	private String universidadeOrigem;
	private String areaDeAtuacao;
	private int codProfessor;
	
	public int getCodProfessorExterno() {
		return codProfessorExterno;
	}
	public void setCodProfessorExterno(int codProfessorExterno) {
		this.codProfessorExterno = codProfessorExterno;
	}
	public int getCodBanca() {
		return codBanca;
	}
	public void setCodBanca(int codBanca) {
		this.codBanca = codBanca;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUniversidadeOrigem() {
		return universidadeOrigem;
	}
	public void setUniversidadeOrigem(String universidadeOrigem) {
		this.universidadeOrigem = universidadeOrigem;
	}
	public String getAreaDeAtuacao() {
		return areaDeAtuacao;
	}
	public void setAreaDeAtuacao(String areaDeAtuacao) {
		this.areaDeAtuacao = areaDeAtuacao;
	}
	public int getCodProfessor() {
		return codProfessor;
	}
	public void setCodProfessor(int codProfessor) {
		this.codProfessor = codProfessor;
	}
	
	
	

}
