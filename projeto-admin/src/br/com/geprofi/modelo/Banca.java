package br.com.geprofi.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Banca {
	
	@Id @GeneratedValue
	private int codBanca;
	private int quantidadeDeParticipantes;
	private int codProjeto;
	
	public int getCodBanca() {
		return codBanca;
	}
	public void setCodBanca(int codBanca) {
		this.codBanca = codBanca;
	}
	public int getQuantidadeDeParticipantes() {
		return quantidadeDeParticipantes;
	}
	public void setQuantidadeDeParticipantes(int quantidadeDeParticipantes) {
		this.quantidadeDeParticipantes = quantidadeDeParticipantes;
	}
	public int getCodProjeto() {
		return codProjeto;
	}
	public void setCodProjeto(int codProjeto) {
		this.codProjeto = codProjeto;
	}
	
	
}
