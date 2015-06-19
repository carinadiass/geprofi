package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.geprofi.modelo.Projeto_has_professor;


public class FuncoesProjeto_has_professor {
	public static void atualiza(Projeto_has_professor proj_prof,int id,Connection connection) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("UPDATE Projeto_has_professor set CODPROJETO=?, CODUSUARIO=? " +
							" where CODPROJETO=?");
			preparedStatement.setLong(1,proj_prof.getCodProjeto());
			preparedStatement.setLong(2, proj_prof.getCodUsuario());
			preparedStatement.setLong(3, proj_prof.getCodProjeto());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static List<Projeto_has_professor> lista(Connection connection) throws SQLException{
		List<Projeto_has_professor> proj_profs = new ArrayList<Projeto_has_professor>();
		String sql ="SELECT * FROM Projeto_has_professor";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Projeto_has_professor proj_prof= new Projeto_has_professor();
				proj_prof.setCodProjeto(rs.getInt("codProjeto"));
				proj_prof.setCodUsuario(rs.getInt("codUsuario"));
				proj_profs.add(proj_prof);
			}
			stmt.close();
			return proj_profs;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static Projeto_has_professor seleciona(Connection connection, int codProjeto) throws SQLException{
		Projeto_has_professor proj_prof= new Projeto_has_professor();
		String sql ="SELECT * FROM PROJETO WHERE CODPROJETO=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, codProjeto);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				proj_prof.setCodUsuario(rs.getInt("codUsuario"));
			}
			preparedStatement.close();
			return proj_prof;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static void insere(Projeto_has_professor proj_prof, Connection connection) throws SQLException{
		String sql = "insert into Projeto_has_professor" +
				"(codprojeto, codusuario)"
				+ " VALUES (?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setLong(1, proj_prof.getCodProjeto());
			stmt.setLong(2, proj_prof.getCodUsuario());
			stmt.execute();
			stmt.close();
			System.out.println("Projeto_has_professor Gravado!");
			connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			connection.close();
		}
	}
	public static void deleta(int codProjeto,int codProfessor, Connection connection) throws SQLException{
		String sql = "DELETE FROM Projeto_has_professor WHERE codProjeto=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, codProjeto);
		stmt.executeUpdate();

	}
	
}
