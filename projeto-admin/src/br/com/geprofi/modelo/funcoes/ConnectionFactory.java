package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public static void main(String[] args) throws SQLException {
		Connection conexao = null;
		try {
			conexao = new ConnectionFactory().getConnection();
			System.out.println("Conectado!");
			conexao.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
			conexao.close();
		}
	}
	public Connection getConnection() throws ClassNotFoundException {
		try {
			  Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(
					"jdbc:mysql://localhost/projetofinal" , "root", "C4r1N4:)");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
