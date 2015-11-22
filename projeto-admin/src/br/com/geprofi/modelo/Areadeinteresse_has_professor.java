package br.com.geprofi.modelo;

public class Areadeinteresse_has_professor {
	private Professor professor;
	private AreaDeInteresse areaDeInteresse;
	private int codAreaDeInteresse;
	private int codUsuario;
	public int getCodAreaDeInteresse() {
		return codAreaDeInteresse;
	}
	public void setCodAreaDeInteresse(int codAreaDeInteresse) {
		this.codAreaDeInteresse = codAreaDeInteresse;
	}
	public int getCodUsuario() {
		return codUsuario;
	}
	public void setCodUsuario(int codUsuario) {
		this.codUsuario = codUsuario;
	}
	
	public Professor getProfessor() {
		return professor;
	}
	public void setProfessor(Professor professor) {
		this.professor = professor;
	}
	public AreaDeInteresse getAreaDeInteresse() {
		return areaDeInteresse;
	}
	public void setAreaDeInteresse(AreaDeInteresse areaDeInteresse) {
		this.areaDeInteresse = areaDeInteresse;
	}
	
	
	
}
