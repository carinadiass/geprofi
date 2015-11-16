package br.com.geprofi.controlador;


import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.geprofi.modelo.Usuario;
import br.com.geprofi.modelo.UsuarioLogado;
import br.com.geprofi.modelo.dao.UsuarioDao;

@Controller
public class LoginController {
	
	private UsuarioDao dao;
	private UsuarioLogado usuarioLogado;
	private Result result;
	public void login(){}
	
	@Inject
	public LoginController(){
		
	}
	public LoginController(UsuarioDao dao, UsuarioLogado usuarioLogado, Result result){
		this.dao=dao;
		//this.usuarioLogado=usuarioLogado;
		this.result=result;
	}
	public void formulario() {}
	public void angularTest(){}
	@Post
	public void autenticar(Usuario usuario){
		System.out.println("Entrei AKIII");
		Usuario usuarioAuth = dao.autentica(usuario.getEmail(), usuario.getSenha());
		System.out.println("Entrei AKIII64646");
		if(usuarioAuth!=null){
			usuarioLogado.setUsuario(usuarioAuth);
			System.out.println("Entrei AKII65456464I");
		}else{
			 result.include("error", "E-mail ou senha incorreta!").redirectTo(this).formulario();
				System.out.println("Entrei AKIIIdasdasd");
		}
		
	}
	
}
