package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.geprofi.modelo.AreaDeInteresse;

public class FuncoesAreaDeInteresse {
	
	
	public static void atualiza(AreaDeInteresse areaDeInteresse, int codArea, Connection connection) throws SQLException{
		
		String sql="UPDATE AREADEINTERESSE SET DESCRICAO=?, NOME=?, AREA=? WHERE codAreaDeInteresse=?";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, areaDeInteresse.getDescricao());
			stmt.setString(2, areaDeInteresse.getNome());
			stmt.setString(3, areaDeInteresse.getArea());
			stmt.setInt(4, codArea);
			stmt.executeUpdate();
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static List<AreaDeInteresse> lista(Connection connection) throws SQLException{
		List<AreaDeInteresse> areasDeInteresse = new ArrayList<AreaDeInteresse>();
		String sql ="SELECT * FROM AREADEINTERESSE" ;
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				AreaDeInteresse  areaDeInteresse= new AreaDeInteresse();
				areaDeInteresse.setCodAreaDeInteresse(rs.getInt("codAreaDeInteresse"));
				areaDeInteresse.setNome(rs.getString("nome"));
				areaDeInteresse.setDescricao(rs.getString("descricao"));
				areaDeInteresse.setArea(rs.getString("area"));
				areasDeInteresse.add(areaDeInteresse);
			}
			stmt.close();
			return areasDeInteresse;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			System.out.println("Fechei conexão!!!");
			connection.close();
		}
	}
	public static AreaDeInteresse seleciona(Connection connection, int codArea) throws SQLException{
		AreaDeInteresse areaDeInteresse = new AreaDeInteresse();
		String sql ="SELECT * FROM AREADEINTERESSE WHERE codAreaDeInteresse=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, codArea);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				areaDeInteresse.setCodAreaDeInteresse(rs.getInt("codAreaDeInteresse"));
				areaDeInteresse.setNome(rs.getString("nome"));
				areaDeInteresse.setDescricao(rs.getString("descricao"));
				areaDeInteresse.setArea(rs.getString("area"));
			}
			stmt.close();
			return areaDeInteresse;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static void insere(AreaDeInteresse areaDeInteresse,Connection connection) throws SQLException{
		String sql= "INSERT INTO AREADEINTERESSE (nome, descricao,area) "
				+ " VALUES (?,?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, areaDeInteresse.getNome());
			stmt.setString(2, areaDeInteresse.getDescricao());
			stmt.setString(3, areaDeInteresse.getArea());
			stmt.execute();
			stmt.close();
			System.out.println("Area de Interesse Gavada!");
			connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			connection.close();
		}
	}
	public static void deleta(int codArea,Connection connection) throws SQLException{
		System.out.println(codArea);
		String sql="DELETE FROM AREADEINTERESSE WHERE codAreaDeInteresse=?";
			PreparedStatement stmt =connection.prepareStatement(sql);
			stmt.setInt(1, codArea);
			stmt.executeUpdate();
	
	}
}
