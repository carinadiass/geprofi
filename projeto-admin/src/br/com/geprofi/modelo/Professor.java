package br.com.geprofi.modelo;

public class Professor extends Usuario {
	
	private String titulo;
	private String cargo;
	private String detalheTitulo;
	private String sala;
	private String curriculo;
	private String paginaPessoal;
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public String getDetalheTitulo() {
		return detalheTitulo;
	}
	public void setDetalheTitulo(String detalheTitulo) {
		this.detalheTitulo = detalheTitulo;
	}
	public String getSala() {
		return sala;
	}
	public void setSala(String sala) {
		this.sala = sala;
	}
	public String getCurriculo() {
		return curriculo;
	}
	public void setCurriculo(String curriculo) {
		this.curriculo = curriculo;
	}
	public String getPaginaPessoal() {
		return paginaPessoal;
	}
	public void setPaginaPessoal(String paginaPessoal) {
		this.paginaPessoal = paginaPessoal;
	}
	
	
	

}
