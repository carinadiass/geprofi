package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.ProfessorExterno;
import br.com.geprofi.modelo.dao.ProfessorExternoDao;
@Controller
public class ProfessorExternoController {
private ProfessorExternoDao dao;  
	
	@Inject
	public ProfessorExternoController(ProfessorExternoDao dao){
		this.dao=dao;
	}
	protected  ProfessorExternoController(){this(null);}
	public void formulario() {}
	public void pfhome(int cod_professor) {}
	public ProfessorExterno edita(int codProfessorExterno, Result result) {
		ProfessorExterno professorExternoEncontrado = null;
		try {
			professorExternoEncontrado = dao.buscaPorCodProfessorExterno(codProfessorExterno);
			result.include(professorExternoEncontrado);
			result.of(this).formulario();
			return professorExternoEncontrado;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return professorExternoEncontrado;
	}
	public void salva(@Valid ProfessorExterno professorExterno,Result result, Validator validator) {
		try {
			validator.onErrorRedirectTo(this).formulario();
			dao.adiciona(professorExterno);
			result.include("mensagem", "Professor Externo salvo com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<ProfessorExterno> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codProfessorExterno, Result result){
		try {
			dao.deleta(codProfessorExterno);
			result.include("mensagem", "Professor Externo deletado com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}
