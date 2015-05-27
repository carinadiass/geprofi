package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.geprofi.modelo.Aluno;
import br.com.geprofi.modelo.Projeto;

public class FuncoesProjeto {
	
	public static void atualiza(Projeto projeto,int id,Connection connection) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("UPDATE PROJETO set NOME=?, TEMA=?, TITULO=?, DESCRICAO=?, QUANTIDADEDEALUNOS=?, PALAVRACHAVE=?, NOTA=? " +
							" where CODPROJETO=?");
			preparedStatement.setString(1, projeto.getNome());
			preparedStatement.setString(2, projeto.getTema());
			preparedStatement.setString(3, projeto.getTitulo());
			preparedStatement.setString(4,projeto.getDescricao());
			preparedStatement.setString(5, projeto.getQuantidadeDeAlunos());
			preparedStatement.setString(6,projeto.getPalavraChave());
			preparedStatement.setString(7, projeto.getNota());
			preparedStatement.setLong(8,projeto.getCodProjeto());
	
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static List<Projeto> lista(Connection connection) throws SQLException{
		List<Projeto> projetos = new ArrayList<Projeto>();
		String sql ="SELECT * FROM PROJETO";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Projeto projeto= new Projeto();
				projeto.setCodProjeto(rs.getInt("codProjeto"));
				projeto.setNome(rs.getString("nome"));
				projeto.setTema(rs.getString("tema"));
				projeto.setTitulo(rs.getString("titulo"));
				projeto.setDataCadastro(rs.getDate("dataCadastro"));
				projeto.setDescricao(rs.getString("descricao"));
				projeto.setQuantidadeDeAlunos(rs.getString("quantidadeDeAlunos"));
				projeto.setPalavraChave(rs.getString("palavraChave"));
				projetos.add(projeto);
			}
			stmt.close();
			return projetos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static Projeto seleciona(Connection connection, int codProjeto) throws SQLException{
		Projeto projeto= new Projeto();
		String sql ="SELECT * FROM PROJETO WHERE  codProjeto=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, codProjeto);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				projeto.setCodProjeto(rs.getInt("codProjeto"));
				projeto.setNome(rs.getString("nome"));
				projeto.setTema(rs.getString("tema"));
				projeto.setTitulo(rs.getString("titulo"));
				projeto.setDataCadastro(rs.getDate("dataCadastro"));
				projeto.setDescricao(rs.getString("descricao"));
				projeto.setQuantidadeDeAlunos(rs.getString("quantidadeDeAlunos"));
				projeto.setPalavraChave(rs.getString("palavraChave"));
				projeto.setNota(rs.getString("nota"));
			}
			preparedStatement.close();
			return projeto;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}
	public static void insere(Projeto projeto, Connection connection) throws SQLException{
		String sql = "insert into projeto" +
				"(nome, titulo, tema, quantidadeDeAlunos, "
				+ "descricao, dataCadastro, palavraChave, nota )"
				+ " VALUES (?,?,?,?,?,?,?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, projeto.getNome());
			stmt.setString(2, projeto.getTitulo());
			stmt.setString(3, projeto.getTema());
			stmt.setString(4, projeto.getQuantidadeDeAlunos());
			stmt.setString(5, projeto.getDescricao());
			stmt.setDate(6, new java.sql.Date(Calendar.getInstance().getTimeInMillis())); //Data de Cadastro
			stmt.setString(7, projeto.getPalavraChave());
			stmt.setString(8, projeto.getNota());
			stmt.execute();
			stmt.close();
			System.out.println("Projeto Gravado!");
			connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			connection.close();
		}
	}
	public static void deleta(int codProjeto, Connection connection) throws SQLException{
		String sql = "DELETE FROM PROJETO WHERE codProjeto=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, codProjeto);
		stmt.executeUpdate();

	}
	public static List<Aluno> listaAlunos(int codProjeto,Connection connection) throws SQLException{
		List<Aluno> alunos = new ArrayList<Aluno>();
		String sql ="SELECT * FROM USUARIO WHERE TIPOUSUARIO='Aluno' AND STATUS=1 AND codProjeto="+codProjeto;
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
				alunos.add(aluno);
			}
			stmt.close();
			return alunos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			connection.close();
		}
	}


}
