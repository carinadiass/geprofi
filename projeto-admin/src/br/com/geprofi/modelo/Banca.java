package br.com.geprofi.modelo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Banca {
	
	@Id @GeneratedValue
	private int codBanca;
	private int quantidadeDeParticipantes;
	private int codProjeto;
	private String[] convite;
	private Date dataInicio;
	private Date datafim;
	
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
	public Date getDataInicio() {
		return dataInicio;
	}
	public void setDataInicio(Date dataInicio) {
		this.dataInicio = dataInicio;
	}
	public Date getDatafim() {
		return datafim;
	}
	public void setDatafim(Date datafim) {
		this.datafim = datafim;
	}
	
	
	
}
