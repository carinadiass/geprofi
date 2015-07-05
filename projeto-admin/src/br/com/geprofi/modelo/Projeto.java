package br.com.geprofi.modelo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
/***
 * 
 * @author Carina
 *
 */
@Entity
public class Projeto {
	
	@Id @GeneratedValue
	private int codProjeto;
	@NotNull(message = "O Campo Nome é Obrigatório")
	private String nome;
	@NotNull(message = "O Campo Tema é Obrigatório")
	private String tema;
	private String titulo;
	private String descricao;
	private String nota;
	private int status;
	private String quantidadeDeAlunos;
	private Date dataCadastro;
	private String palavraChave;
    private int codtipoetapa;
	@ManyToMany
	@JoinColumn(name="codProfessor")
	private Professor professor;
	
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
	public String getTema() {
		return tema;
	}
	public void setTema(String tema) {
		this.tema = tema;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getNota() {
		return nota;
	}
	public void setNota(String nota) {
		this.nota = nota;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getQuantidadeDeAlunos() {
		return quantidadeDeAlunos;
	}
	public void setQuantidadeDeAlunos(String quantidadeDeAlunos) {
		this.quantidadeDeAlunos = quantidadeDeAlunos;
	}
	public Date getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(Date dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	public String getPalavraChave() {
		return palavraChave;
	}
	public void setPalavraChave(String palavraChave) {
		this.palavraChave = palavraChave;
	}
	public int getCodtipoetapa() {
		return codtipoetapa;
	}
	public void setCodtipoetapa(int codtipoetapa) {
		this.codtipoetapa = codtipoetapa;
	}
	public Professor getProfessor() {
		return professor;
	}
	public void setProfessor(Professor professor) {
		this.professor = professor;
	}
	
	
	
}
