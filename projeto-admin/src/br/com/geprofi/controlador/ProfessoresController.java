package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Professor;
import br.com.geprofi.modelo.dao.ProfessorDao;


@Controller
public class ProfessoresController {
	private ProfessorDao dao;  
	
	@Inject
	public ProfessoresController(ProfessorDao dao){
		this.dao=dao;
	}
	protected  ProfessoresController(){this(null);}
	public void formulario() {}
	public void pfhome(int codProfessor, Result result) {
		Professor professorEncontrado=null;
		try{
			result.include("projetoList", dao.buscaProjeto_professor(codProfessor));
		  professorEncontrado = dao.buscaPorCodUsuario(codProfessor);
			result.include(professorEncontrado);
		}catch (SQLException e){
			e.printStackTrace();
		}
	}
	public Professor edita(int codUsuario, Result result) {
		Professor professorEncontrado = null;
		try {
			professorEncontrado = dao.buscaPorCodUsuario(codUsuario);
			result.include(professorEncontrado);
			result.include("projetoList", dao.buscaProjeto_professor(codUsuario));
			result.of(this).formulario();
			return professorEncontrado;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return professorEncontrado;
	}
	public void salva(@Valid Professor professor,Result result, Validator validator) {
		try {
			validator.onErrorRedirectTo(this).pfhome(professor.getCodUsuario(),result);
			dao.adiciona(professor);
			result.include("mensagem", "Professor salvo com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<Professor> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codUsuario, Result result){
		try {
			dao.deleta(codUsuario);
			result.include("mensagem", "Professor deletado com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void pegaProjetos(int codProfessor, Result result){
		try{
			result.include("projetoList", dao.buscaProjeto_professor(codProfessor));
		}catch (SQLException e){
			e.printStackTrace();
		}
		
	}
}
