package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
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
		return null;
	}
	
	public void salva(Banca banca, Result result){
		
	}
	public List<Banca> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codBanca, Result result){
		try {
			dao.deleta(codBanca);
			result.include("mensagem", "Banca deletada com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
