package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;

import br.com.geprofi.modelo.Usuario;
import br.com.geprofi.modelo.dao.UsuarioDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesUsuario;

public class JDBCUsuarioDao implements UsuarioDao {
	
	private Connection connection;
	public JDBCUsuarioDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	@Override
	public Usuario autentica(String email, String senha) {
		// TODO Auto-generated method stub
		return FuncoesUsuario.buscaUsuarioLogado(email, senha, connection);
	}

}
