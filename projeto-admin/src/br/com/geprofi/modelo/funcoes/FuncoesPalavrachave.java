package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.geprofi.modelo.Palavrachave;

public class FuncoesPalavrachave {

	public static void atualiza(Palavrachave palavrachave, Connection connection) throws SQLException{

		String sql="UPDATE Palavrachave SET palavra=?  WHERE codpalavrachave=?";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, palavrachave.getPalavra());
			stmt.setInt(2, palavrachave.getCodPalavraChave());
			stmt.executeUpdate();
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static List<Palavrachave> lista(Connection connection) throws SQLException{
		List<Palavrachave> palavraschave = new ArrayList<Palavrachave>();
		String sql ="SELECT * FROM Palavrachave" ;
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Palavrachave palavrachave= new Palavrachave();
				palavrachave.setCodPalavraChave(rs.getInt("codpalavrachave"));
				palavrachave.setCodProfessor(rs.getInt("codProfessor"));
				palavrachave.setPalavra(rs.getString("palavra"));
				palavraschave.add(palavrachave);
			}
			stmt.close();
			return palavraschave;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			System.out.println("Fechei conexão!!!");
			connection.close();
		}
	}
	public static Palavrachave seleciona(Connection connection, int codpalavrachave) throws SQLException{
		Palavrachave palavrachave = new Palavrachave();
		String sql ="SELECT * FROM palavrachave WHERE codpalavrachave=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, codpalavrachave);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				palavrachave.setCodPalavraChave(rs.getInt("codpalavrachave"));
				palavrachave.setCodProfessor(rs.getInt("codProfessor"));
				palavrachave.setPalavra(rs.getString("palavra"));
			}
			stmt.close();
			return palavrachave;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static void insere(Palavrachave palavrachave,Connection connection) throws SQLException{
		String sql= "INSERT INTO palavrachave (codProfessor,palavra) "
				+ " VALUES (?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, palavrachave.getCodProfessor());
			stmt.setString(2, palavrachave.getPalavra());
			stmt.execute();
			stmt.close();
			System.out.println("Palavra chave Gavada!");
			connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			connection.close();
		}
	}
	public static void deleta(int codpalavrachave,Connection connection) throws SQLException{
		System.out.println("Código da Palavra chave= "+codpalavrachave);
		String sql="DELETE FROM palavrachave WHERE codpalavrachave=?";
		PreparedStatement stmt =connection.prepareStatement(sql);
		stmt.setInt(1, codpalavrachave);
		stmt.executeUpdate();

	}
}

