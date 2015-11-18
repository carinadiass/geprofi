package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Banca;

public interface BancaDao {
	
	void adiciona(Banca banca, int codProjeto) throws SQLException;

	List<Banca> todos() throws SQLException;

	Banca buscaPorCodBanca(int codBanca) throws SQLException;
	
	void deleta(int codBanca) throws SQLException;

}
