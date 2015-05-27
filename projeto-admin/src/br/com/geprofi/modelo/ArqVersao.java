package br.com.geprofi.modelo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ArqVersao {
	
	@Id @GeneratedValue
	private int codArqVersao;
	private int codArquivo;
	private String nome;
	private String versao;
	private Date dataDeCadastro;
	
	public int getCodArqVersao() {
		return codArqVersao;
	}
	public void setCodArqVersao(int codArqVersao) {
		this.codArqVersao = codArqVersao;
	}
	public int getCodArquivo() {
		return codArquivo;
	}
	public void setCodArquivo(int codArquivo) {
		this.codArquivo = codArquivo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}
	public Date getDataDeCadastro() {
		return dataDeCadastro;
	}
	public void setDataDeCadastro(Date dataDeCadastro) {
		this.dataDeCadastro = dataDeCadastro;
	}
	
	
}
