package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import br.com.geprofi.modelo.ProfessorExterno;;

public class FuncoesProfessorExterno {
	public static void atualiza(ProfessorExterno professorExterno,int codProfessorExterno, Connection connection) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update PROFESSOREXTERNO set NOME=?, EMAIL=?, UNIVERSIDADEORIGEM=?, AREADEATUACAO=? " +
							"where CODPROFESSOREXTERNO=? ");
			preparedStatement.setString(1, professorExterno.getNome());
			preparedStatement.setString(2, professorExterno.getEmail());
			preparedStatement.setString(3, professorExterno.getUniversidadeOrigem());
			preparedStatement.setString(4, professorExterno.getAreaDeAtuacao());
			preparedStatement.setInt(5,codProfessorExterno);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static List<ProfessorExterno> lista(Connection connection) throws SQLException{
		List<ProfessorExterno> professoresExterno = new ArrayList<ProfessorExterno>();
		String sql ="SELECT * FROM PROFESSOREXTERNO ";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				ProfessorExterno professorExterno= new ProfessorExterno();
				professorExterno.setCodProfessorExterno(rs.getInt("codProfessorExterno"));
				professorExterno.setCodBanca(rs.getInt("codBanca"));
				professorExterno.setNome(rs.getString("nome"));
				professorExterno.setEmail(rs.getString("email"));
				professorExterno.setUniversidadeOrigem(rs.getString("universidadeOrigem"));
				professorExterno.setAreaDeAtuacao(rs.getString("areaDeAtuacao"));
    			professoresExterno.add(professorExterno);
			}
			stmt.close();
			return professoresExterno;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static ProfessorExterno seleciona(Connection connection, int codProfessorExterno) throws SQLException{
		ProfessorExterno professorExterno= new ProfessorExterno();
		String sql ="SELECT * FROM PROFESSOREXTERNO WHERE codProfessorExterno=? ";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, codProfessorExterno);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				professorExterno.setCodProfessorExterno(rs.getInt("codProfessorExterno"));
				professorExterno.setCodBanca(rs.getInt("codBanca"));
				professorExterno.setNome(rs.getString("nome"));
				professorExterno.setEmail(rs.getString("email"));
				professorExterno.setUniversidadeOrigem(rs.getString("universidadeOrigem"));
				professorExterno.setAreaDeAtuacao(rs.getString("areaDeAtuacao"));
			}
			preparedStatement.close();
			return professorExterno;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static void insere(ProfessorExterno professorExterno, Connection connection) throws SQLException{
		String sql = "insert into PROFESSOREXTERNO" +
				"(codBanca, nome, email, universidadeOrigem, areaDeAtuacao )"
				+ " VALUES (?,?,?,?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, professorExterno.getCodBanca());
			stmt.setString(2, professorExterno.getNome());
			stmt.setString(3, professorExterno.getEmail());
			stmt.setString(4, professorExterno.getUniversidadeOrigem());
			stmt.setString(5, professorExterno.getAreaDeAtuacao());
			
			stmt.execute();
			stmt.close();
			System.out.println("Professor Externo Gravado!");
			connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			connection.close();
		}
	}
	public static void deleta(int codProfessorExterno, Connection connection) throws SQLException{
		String sql = "DELETE FROM PROFESSOREXTERNO WHERE CODPROFESSOREXTERNO=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, codProfessorExterno);
		stmt.executeUpdate();

	}

}
