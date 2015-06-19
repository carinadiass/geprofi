package br.com.geprofi.modelo;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;

@SessionScoped
public class UsuarioLogado implements Serializable {
	private Usuario usuario;

	public void loga(Usuario usuario) {
		this.usuario = usuario;
	}
	public boolean isLogado() {
		return this.usuario != null;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void desloga() {
		this.usuario = null;
	}
}

