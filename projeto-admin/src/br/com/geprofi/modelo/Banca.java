package br.com.geprofi.modelo;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Banca {
	
	@Id @GeneratedValue
	private int codBanca;

	private int quantidadeDeParticipantes;
	private int codProjeto;
	@NotNull(message = "O Campo Professores é Obrigatório")
	private String[] convite;
	@NotNull(message = "O Campo De é Obrigatório")
	private String datainicio;
	@NotNull(message = "O Campo Até é Obrigatório")
	private String datafim;
	
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
	public String getConvite() {
		String convites="";
		if(convite!=null){
			for(int i=0;i<convite.length;i++){
				convites+=convite[i]+"; ";
			}
		}
		return convites;
	}
	public void setConvite(String[] convite) {
		this.convite = convite;
	}
	public String getDataInicio() {
		return datainicio;
	}
	public void setDataInicio(String dataInicio) {
		this.datainicio = dataInicio;
	}
	public String getDatafim() {
		return datafim;
	}
	public void setDatafim(String datafim) {
		this.datafim = datafim;
	}
	
	
	
}
