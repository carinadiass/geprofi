package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Result;
import br.com.geprofi.modelo.Banca;
import br.com.geprofi.modelo.Palavrachave;
import br.com.geprofi.modelo.dao.PalavrachaveDao;

public class PalavraChaveController {
	
	private PalavrachaveDao dao;
	
	@Inject
	public PalavraChaveController(PalavrachaveDao dao){
		this.dao=dao;
	}
	
	public PalavraChaveController(){this(null);} 
	public void formulario(){}
	
	public Palavrachave edita(int codPalavraChave, Result result){
		Palavrachave palavrachave=null;
		System.out.println(codPalavraChave);
		try{
			palavrachave = dao.buscaPorcodPalavraChave(codPalavraChave);
			System.out.println(palavrachave);
			result.include(palavrachave);
			result.of(this).formulario();
			return palavrachave;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return palavrachave;
	}
	public void salva(Palavrachave palavrachave, Result result){
		try {
			dao.adiciona(palavrachave);
			result.include("mensagem", "Palavrachave  criada com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<Palavrachave> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codPalavraChave, Result result){
		try {
			dao.deleta(codPalavraChave);
			result.include("mensagem", "Palavrachave deletada com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	

}
