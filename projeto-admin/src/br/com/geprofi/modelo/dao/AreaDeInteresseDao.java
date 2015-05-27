package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.AreaDeInteresse;

public interface AreaDeInteresseDao {
	void adiciona(AreaDeInteresse areaDeInteresse) throws SQLException;

	List<AreaDeInteresse> todos() throws SQLException;

	AreaDeInteresse buscaPorCodArea(int codAreaDeInteresse) throws SQLException;
	
	void deleta(int codAreaDeInteresse) throws SQLException;



}
