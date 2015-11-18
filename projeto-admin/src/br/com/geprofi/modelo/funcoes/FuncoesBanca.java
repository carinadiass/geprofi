package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.geprofi.modelo.Banca;

public class FuncoesBanca {
public static void atualiza(Banca banca, Connection connection) throws SQLException{
		
		String sql="UPDATE BANCA SET quantidadeDeParticipantes=?  WHERE codBanca=?";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, banca.getQuantidadeDeParticipantes());
			stmt.setInt(2, banca.getCodBanca());
			stmt.executeUpdate();
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static boolean existeBanca(Connection connection, int codProjeto){
		String sql ="SELECT * FROM Banca WHERE codProjeto=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, codProjeto);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				return true;
			}
			stmt.close();
			return false;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//connection.close();
		}
	}
	public static List<Banca> lista(Connection connection) throws SQLException{
		List<Banca> bancas = new ArrayList<Banca>();
		String sql ="SELECT * FROM BANCA" ;
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Banca banca= new Banca();
				banca.setQuantidadeDeParticipantes(rs.getInt("quantidadeDeParticipantes"));
				banca.setCodBanca(rs.getInt("codBanca"));
				banca.setCodProjeto(rs.getInt("codProjeto"));
				bancas.add(banca);
			}
			stmt.close();
			return bancas;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			System.out.println("Fechei conexão!!!");
			connection.close();
		}
	}
	public static Banca seleciona(Connection connection, int codBanca) throws SQLException{
		Banca banca = new Banca();
		String[] convite = null;
		String sql ="SELECT * FROM Banca WHERE codBanca=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, codBanca);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				banca.setCodBanca(rs.getInt("codBanca"));
				banca.setQuantidadeDeParticipantes(rs.getInt("quantidadeDeParticipantes"));
				banca.setCodProjeto(rs.getInt("codProjeto"));
				System.out.println("Convite:" +rs.getString("convite"));
				if(rs.getString("convite")!=null){
 
					banca.setConvite(convite);
				}
				
			}
			stmt.close();
			return banca;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static void insere(Banca banca,Connection connection) throws SQLException{
		
		if(!existeBanca(connection,banca.getCodProjeto())){
			String[] convite = null;
			String sql= "INSERT INTO Banca (codBanca, quantidadeDeParticipantes,codProjeto, convite, datainicio, datafim) "
					+ " VALUES (?,?,?,?,?,?)";
			try{
				PreparedStatement stmt = connection.prepareStatement(sql);
				stmt.setInt(1, banca.getCodBanca());
				convite=banca.getConvite().split(";");
				if(convite.length>0){
					stmt.setInt(2, convite.length);
				}
				stmt.setInt(3, banca.getCodProjeto());
				stmt.setString(4, banca.getConvite());
				stmt.setDate(5, (Date) banca.getDatafim());
				stmt.setDate(6, (Date) banca.getDataInicio());
				stmt.execute();
				stmt.close();
				System.out.println("Banca Gavada!");
				connection.close();
			}catch (SQLException e) {
				throw new RuntimeException(e);
			}finally{
				//connection.close();
			}
		}
	}
	public static void deleta(int codBanca,Connection connection) throws SQLException{
		System.out.println("Código da Banca= "+codBanca);
		String sql="DELETE FROM Banca WHERE codBanca=?";
			PreparedStatement stmt =connection.prepareStatement(sql);
			stmt.setInt(1, codBanca);
			stmt.executeUpdate();
	}
}
