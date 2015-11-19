package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Banca;
import br.com.geprofi.modelo.dao.BancaDao;

@Controller
public class BancaController {
	
	private BancaDao dao;
	@Inject 
	public BancaController(BancaDao dao){
		this.dao=dao;
	} 
	public BancaController(){this(null);} 
	public void formulario(){}
	public Banca edita(int codBanca, Result result){
		Banca banca=null;
		System.out.println(codBanca);
		try{
			banca = dao.buscaPorCodBanca(codBanca);
			System.out.println(banca);
			result.include(banca);
			result.of(this).formulario();
			return banca;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return banca;
	}
	public void salva(@Valid Banca banca,int codProjeto,int codUsuario, Result result,Validator validator){
		try {
			validator.onErrorRedirectTo(ProjetosController.class).convidarBanca(codUsuario, codProjeto, result);
			dao.adiciona(banca, codProjeto);
			result.include("mensagem", "Banca criada com sucesso!");
			result.forwardTo(ProjetosController.class).convidarBanca(codUsuario,codProjeto,result);
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<Banca> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codBanca,int codUsuario,int codProjeto,Result result ){
		try {
			dao.deleta(codBanca);
			result.include("mensagem", "Banca deletada com sucesso!");
			result.redirectTo(ProjetosController.class).convidarBanca( codUsuario, codProjeto, result);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
