package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Palavrachave;
import br.com.geprofi.modelo.dao.PalavrachaveDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesBanca;
import br.com.geprofi.modelo.funcoes.FuncoesPalavrachave;

public class JDBCPalavrachaveDao implements PalavrachaveDao {

	private Connection connection;
	public JDBCPalavrachaveDao(){
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	@Override
	public Palavrachave buscaPorcodPalavraChave(int codPalavraChave) throws SQLException {
		return FuncoesPalavrachave.seleciona(connection, codPalavraChave);
	}
	@Override
	public void adiciona(Palavrachave palavrachave) throws SQLException {
		if(palavrachave.getCodPalavraChave()<1){
			FuncoesPalavrachave.insere(palavrachave, connection);
		}else{
			FuncoesPalavrachave.atualiza(palavrachave, connection);
		}
	}
	@Override
	public List<Palavrachave> todos() throws SQLException {
		return FuncoesPalavrachave.lista(connection);
	}
	@Override
	public void deleta(int codPalavraChave) throws SQLException {
		FuncoesPalavrachave.deleta(codPalavraChave, connection);
	}
}
