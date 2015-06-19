package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Aluno;
import br.com.geprofi.modelo.dao.AlunoDao;

@Controller
public class AlunosController {

	private AlunoDao dao;  
	@Inject
	public AlunosController(AlunoDao dao){
		this.dao=dao;
	}

	protected AlunosController(){this(null);}
	public void formulario() {}
	public Aluno edita(int codUsuario, Result result) {
		Aluno alunoEncontrado = null;
		try {
			alunoEncontrado = dao.buscaPorCodUsuario(codUsuario);
			result.include(alunoEncontrado);
			result.of(this).formulario();
			return alunoEncontrado;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return alunoEncontrado;
	}
	public void salva(@Valid Aluno aluno,Result result,Validator validator) {
		try {
			validator.onErrorRedirectTo(this).formulario();
			dao.adiciona(aluno);
			result.include("mensagem", "Aluno salvo com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<Aluno> lista() {
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
			result.include("mensagem", "Aluno deletado com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}	
