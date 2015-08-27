package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.util.List;

import br.com.geprofi.modelo.Banca;
import br.com.geprofi.modelo.Palavrachave;
import br.com.geprofi.modelo.dao.PalavrachaveDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;

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
	public Palavrachave buscaPorcodPalavraChave(int codPalavraChave) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void adiciona(Palavrachave palavrachave) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Banca> todos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleta(int codPalavraChave) {
		// TODO Auto-generated method stub
		
	}

}
