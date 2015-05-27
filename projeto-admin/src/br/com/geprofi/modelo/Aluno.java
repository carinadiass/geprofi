package br.com.geprofi.modelo;


public class Aluno extends Usuario {

	private int codProjeto;
	private String dre;
	private String curso;
	
	public int getCodProjeto() {
		return codProjeto;
	}
	public void setCodProjeto(int codProjeto) {
		this.codProjeto = codProjeto;
	}
	public String getDre() {
		return dre;
	}
	public void setDre(String dre) {
		this.dre = dre;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	
	
	
}
