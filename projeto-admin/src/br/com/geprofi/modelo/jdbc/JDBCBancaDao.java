package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Banca;
import br.com.geprofi.modelo.dao.BancaDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesBanca;

public class JDBCBancaDao implements BancaDao {
	
	private Connection connection;
	
	public JDBCBancaDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void adiciona(Banca banca, int codProjeto) throws SQLException {
		
		if(banca.getCodBanca()<1){
			FuncoesBanca.insere(banca, connection);
		}else{
			FuncoesBanca.atualiza(banca, connection);
		}
	}

	@Override
	public List<Banca> todos() throws SQLException {
		return FuncoesBanca.lista(connection);
	}
	@Override
	public Banca buscaPorCodBanca(int codBanca) throws SQLException {
		return FuncoesBanca.seleciona(connection, codBanca);
	}
	@Override
	public void deleta(int codBanca) throws SQLException {
		FuncoesBanca.deleta(codBanca, connection);
	}
}
