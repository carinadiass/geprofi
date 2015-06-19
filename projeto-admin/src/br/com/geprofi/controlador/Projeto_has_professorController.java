package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Projeto_has_professor;
import br.com.geprofi.modelo.dao.Projeto_has_professorDao;

@Controller
public class Projeto_has_professorController {
	
	private Projeto_has_professorDao dao;  
	@Inject
	public Projeto_has_professorController(Projeto_has_professorDao dao){
		this.dao=dao;
	}
	protected  Projeto_has_professorController(){this(null);}
	public void formulario() {}
	public Projeto_has_professor edita(int codUsuario, Result result) {
		Projeto_has_professor proj_prof = null;
		try {
			proj_prof = dao.buscaPorCodProjeto(codUsuario);
			result.include(proj_prof);
			result.of(this).formulario();
			return proj_prof;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return proj_prof;
	}
	public void salva(@Valid Projeto_has_professor proj_prof, Result result, Validator validator) {
		try {
			validator.onErrorRedirectTo(this).formulario();
			dao.adiciona(proj_prof);
			result.include("mensagem", "Relacionamento salvo com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<Projeto_has_professor> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codProjeto, int codProfessor, Result result){
		try {
			dao.deleta(codProjeto, codProfessor);
			result.include("mensagem", "Relacionamento deletado com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
