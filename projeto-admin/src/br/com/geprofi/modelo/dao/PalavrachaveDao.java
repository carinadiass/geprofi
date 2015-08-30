package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Banca;
import br.com.geprofi.modelo.Palavrachave;

public interface PalavrachaveDao {

	Palavrachave buscaPorcodPalavraChave(int codPalavraChave)  throws SQLException;

	void adiciona(Palavrachave palavrachave)  throws SQLException;

	List<Palavrachave> todos()  throws SQLException;

	void deleta(int codPalavraChave)  throws SQLException;

}
