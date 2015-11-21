package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.dao.HomeDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesHome;

public class JDBCHomeDao implements HomeDao{

	private Connection connection;
	public JDBCHomeDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<Projeto> projetoFinalizados() throws SQLException {
		// TODO Auto-generated method stub
		return FuncoesHome.lista(connection);
	}
	@Override
	public Arquivo buscaArquivosCodProjeto(int codProjeto)
			throws SQLException {
		// TODO Auto-generated method stub
		return FuncoesHome.buscaMonografi(connection, codProjeto);
	}

}
