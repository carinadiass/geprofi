package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import net.diegomaia.vraptor.saci.annotation.LoggedIn;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.AreaDeInteresse;
import br.com.geprofi.modelo.dao.AreaDeInteresseDao;

@Controller
public class AreaDeInteresseController {

	private AreaDeInteresseDao dao;
	protected AreaDeInteresseController(){this(null);}
	
	@Inject
	public AreaDeInteresseController(AreaDeInteresseDao dao){
		this.dao=dao;
	}
	@LoggedIn
	public void formulario() {}
	
	public AreaDeInteresse edita(int codAreaDeInteresse, Result result){
		AreaDeInteresse areaEncontrada=null;
		System.out.println(codAreaDeInteresse);
		try{
			areaEncontrada = dao.buscaPorCodArea(codAreaDeInteresse);
			System.out.println(areaEncontrada);
			result.include(areaEncontrada);
			result.of(this).formulario();
			return areaEncontrada;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return areaEncontrada;
	}
	public void salva(@Valid AreaDeInteresse areaDeInteresse, int codUsuario,Result result,Validator validator){
		try {
			validator.onErrorRedirectTo(ProfessoresController.class).pfhome(codUsuario, result);
			dao.adiciona(areaDeInteresse,codUsuario);
			result.include("mensagem", "Area de interesse salva com sucesso!");
			result.redirectTo(ProfessoresController.class).pfhome(codUsuario, result);
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<AreaDeInteresse> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void delete(int codAreaDeInteresse,int codUsuario, Result result){
		try {
			dao.deleta(codAreaDeInteresse);
			result.include("mensagem", "Area de interesse deletada com sucesso!");
			result.redirectTo(ProfessoresController.class).pfhome(codUsuario, result);
			//result.nothing();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}


}
