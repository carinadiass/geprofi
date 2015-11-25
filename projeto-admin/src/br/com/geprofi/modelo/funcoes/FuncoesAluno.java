package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import br.com.geprofi.modelo.Aluno;

public class FuncoesAluno {

	public static String getRandomPass(int len){  
		char[] chart ={'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};  
		char[] senha= new char[len];  
		int chartLenght = chart.length;  
		Random rdm = new Random();  
		for (int x=0; x<len; x++)  
			senha[x] = chart[rdm.nextInt(chartLenght)];  
		return new String(senha);  
	}
	public static void atualiza(Aluno aluno,int id,Connection connection) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update usuario set NOME=?, DRE=?,  SEXO=?, EMAIL=?, CURSO=?" +
							"where CODUSUARIO=? AND STATUS=1");
			preparedStatement.setString(1, aluno.getNome());
			preparedStatement.setString(2, aluno.getDre());
			preparedStatement.setString(3, aluno.getSexo());
			preparedStatement.setString(4, aluno.getEmail());
			preparedStatement.setString(5, aluno.getCurso());
			preparedStatement.setInt(6,id);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static List<Aluno> lista(Connection connection, int codProjeto) throws SQLException{
		List<Aluno> alunos = new ArrayList<Aluno>();
		String sql="";
		if(codProjeto!=0){
		   sql ="SELECT * FROM USUARIO WHERE TIPOUSUARIO='Aluno' AND STATUS=1 and codProjeto="+codProjeto;
		}else{
			sql ="SELECT * FROM USUARIO WHERE TIPOUSUARIO='Aluno' AND STATUS=1";
		}
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Aluno aluno= new Aluno();
				aluno.setCodUsuario(rs.getInt("codusuario"));
				aluno.setNome(rs.getString("nome"));
				aluno.setEmail(rs.getString("email"));
				aluno.setDataDeCadastro(rs.getDate("dataDeCadastro"));
				aluno.setTipoUsuario(rs.getString("tipoUsuario"));
				aluno.setSexo(rs.getString("sexo"));
				aluno.setDre(rs.getString("dre"));
				aluno.setCurso(rs.getString("curso"));
				aluno.setSenha(rs.getString("senha"));
				alunos.add(aluno);
			}
			stmt.close();
			return alunos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//connection.close();
		}
	}
	public static Aluno seleciona(Connection connection, int codUsuario) throws SQLException{
		Aluno aluno= new Aluno();
		String sql ="SELECT * FROM USUARIO WHERE tipoUsuario='Aluno' AND codUsuario=? and status=1";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, codUsuario);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				aluno.setCodUsuario(rs.getInt("codUsuario"));
				aluno.setNome(rs.getString("nome"));
				aluno.setEmail(rs.getString("email"));
				aluno.setDataDeCadastro(rs.getDate("dataDeCadastro"));
				aluno.setTipoUsuario(rs.getString("tipoUsuario"));
				aluno.setSexo(rs.getString("sexo"));
				aluno.setDre(rs.getString("dre"));
				aluno.setCurso(rs.getString("curso"));
				aluno.setCodProjeto(rs.getInt("codProjeto"));
			}
			preparedStatement.close();
			return aluno;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//connection.close();
		}
	}
	public static void insere(Aluno aluno, Connection connection) throws SQLException{
		String sql = "insert into usuario" +
				"(nome, email, senha, tipoUsuario, "
				+ "dre, sexo, dataDeCadastro , status , curso, codProjeto)"
				+ " VALUES (?,?,?,?,?,?,?,?,?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			// preenche os valores
			stmt.setString(1, aluno.getNome());
			stmt.setString(2, aluno.getEmail());
			stmt.setString(3, aluno.getSenha());
			stmt.setString(4, "Aluno");
			stmt.setString(5, aluno.getDre());
			stmt.setString(6, aluno.getSexo());
			stmt.setDate(7, new java.sql.Date(Calendar.getInstance().getTimeInMillis())); //Data de Cadastro
			stmt.setInt(8, 1);
			stmt.setString(9, aluno.getCurso());
			stmt.setInt(10, aluno.getCodProjeto());
			// executa
			stmt.execute();
			stmt.close();
			System.out.println("Gravado!");
			//connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			//connection.close();
		}
	}
	public static void deleta(int codUsuario, Connection connection) throws SQLException{
		String sql = "UPDATE USUARIO SET STATUS=0 WHERE CODUSUARIO=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		// Parameters start with 1
		stmt.setInt(1, codUsuario);
		stmt.executeUpdate();

	}
	
	
	

}


