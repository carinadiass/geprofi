package br.com.geprofi.modelo;

import java.sql.Date;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Arquivo {

	@Id @GeneratedValue
	private int codArquivo;
	private int codProjeto;
	private String nome;
	private String versao;
	private byte[] conteudo;
	private String contentType;
	private Date dataCadastro;
	
	public Arquivo(){};
	
	public Arquivo(String nome, byte[] conteudo,
			String contentType, Date dataCadastro) {
		this.nome = nome;
		this.conteudo = conteudo;
		this.contentType = contentType;
		this.dataCadastro = dataCadastro;
	}
	public byte[] getConteudo() {
		return conteudo;
	}
	public void setConteudo(byte[] conteudo) {
		this.conteudo = conteudo;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public Date getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	public int getCodArquivo() {
		return codArquivo;
	}
	public void setCodArquivo(int codArquivo) {
		this.codArquivo = codArquivo;
	}
	public int getCodProjeto() {
		return codProjeto;
	}
	public void setCodProjeto(int codProjeto) {
		this.codProjeto = codProjeto;
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

}
