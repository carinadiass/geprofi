package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.geprofi.modelo.Usuario;

public class FuncoesUsuario {
	
	public static Usuario buscaUsuarioLogado(String email, String senha, Connection connection){
		Usuario usuario =  new Usuario();
		String sql ="SELECT * FROM USUARIO WHERE EMAIL=? AND SENHA=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, senha);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				usuario.setEmail(rs.getString("email"));
				usuario.setSenha(rs.getString("senha"));
			}
			preparedStatement.close();
			//	connection.close();
			return usuario;
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//	connection.close();
		}
		
	}

}
