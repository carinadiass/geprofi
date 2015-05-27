package br.com.geprofi.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.validation.constraints.NotNull;


@Entity
public class AreaDeInteresse {
	
	@Id @GeneratedValue
	private int codAreaDeInteresse;
	private String area;
	@NotNull(message = "O Campo Nome é Obrigatório")
	private String nome;
	@NotNull(message = "O Campo Descrição é Obrigatório")
	private String descricao;
	
	
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getCodAreaDeInteresse() {
		return codAreaDeInteresse;
	}
	public void setCodAreaDeInteresse(int codAreaDeInteresse) {
		this.codAreaDeInteresse = codAreaDeInteresse;
	}
}
