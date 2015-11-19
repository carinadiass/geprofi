package br.com.geprofi.modelo.funcoes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import br.com.geprofi.modelo.AreaDeInteresse;
import br.com.geprofi.modelo.Palavrachave;
import br.com.geprofi.modelo.Professor;
import br.com.geprofi.modelo.ProfessorExterno;
import br.com.geprofi.modelo.Projeto;

public class FuncoesProfessor {

	public static String getRandomPass(int len){  
		char[] chart ={'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};  
		char[] senha= new char[len];  
		int chartLenght = chart.length;  
		Random rdm = new Random();  
		for (int x=0; x<len; x++)  
			senha[x] = chart[rdm.nextInt(chartLenght)];  
		return new String(senha);  
	}
	public static void atualiza(Professor professor,int id,Connection connection) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update usuario set NOME=?, SEXO=?, EMAIL=?, TITULO=?, CARGO=?, DETALHETITULO=?, SALA=?, PAGINAPESSOAL=?, CURRICULO=? " +
							"where CODUSUARIO=? AND STATUS=1");
			preparedStatement.setString(1, professor.getNome());
			preparedStatement.setString(2, professor.getSexo());
			preparedStatement.setString(3, professor.getEmail());
			preparedStatement.setString(4, professor.getTitulo());
			preparedStatement.setString(5, professor.getCargo());
			preparedStatement.setString(6, professor.getDetalheTitulo());
			preparedStatement.setString(7, professor.getSala());
			preparedStatement.setString(8, professor.getPaginaPessoal());
			preparedStatement.setString(9, professor.getCurriculo());
			preparedStatement.setInt(10,id);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static List<Professor> lista(Connection connection) throws SQLException{
		List<Professor> professores = new ArrayList<Professor>();
		String sql ="SELECT * FROM USUARIO WHERE TIPOUSUARIO='Professor' AND STATUS=1";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Professor professor= new Professor();
				professor.setCodUsuario(rs.getInt("codusuario"));
				professor.setNome(rs.getString("nome"));
				professor.setEmail(rs.getString("email"));
				professor.setDataDeCadastro(rs.getDate("dataDeCadastro"));
				professor.setTipoUsuario(rs.getString("tipoUsuario"));
				professor.setSexo(rs.getString("sexo"));
				professor.setTitulo(rs.getString("titulo"));
				professor.setCargo(rs.getString("cargo"));
				professor.setDetalheTitulo(rs.getString("detalheTitulo"));
				professor.setSala(rs.getString("sala"));
				professor.setPaginaPessoal(rs.getString("paginaPessoal"));
				professor.setCurriculo(rs.getString("curriculo"));

				professores.add(professor);
			}
			stmt.close();
			return professores;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
		}
	}
	public static Professor seleciona(Connection connection, int codUsuario) throws SQLException{
		Professor professor= new Professor();
		String sql ="SELECT * FROM USUARIO WHERE tipoUsuario='Professor' AND codUsuario=? AND STATUS=1";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, codUsuario);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				professor.setCodUsuario(rs.getInt("codUsuario"));
				professor.setNome(rs.getString("nome"));
				professor.setEmail(rs.getString("email"));
				professor.setDataDeCadastro(rs.getDate("dataDeCadastro"));
				professor.setTipoUsuario(rs.getString("tipoUsuario"));
				professor.setSexo(rs.getString("sexo"));
				professor.setTitulo(rs.getString("titulo"));
				professor.setCargo(rs.getString("cargo"));
				professor.setDetalheTitulo(rs.getString("detalheTitulo"));
				professor.setSala(rs.getString("sala"));
				professor.setPaginaPessoal(rs.getString("paginaPessoal"));
				professor.setCurriculo(rs.getString("curriculo"));
			}
			preparedStatement.close();
			return professor;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
		}
	}
	public static Professor selecionaProfessor(Connection connection, int codProjeto) throws SQLException{
		Professor professor= new Professor();
		String sql ="SELECT * FROM USUARIO WHERE tipoUsuario='Professor' AND STATUS=1 and codUsuario in (select codUsuario from projeto_has_professor where codProjeto=?)";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, codProjeto);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				professor.setCodUsuario(rs.getInt("codUsuario"));
				professor.setNome(rs.getString("nome"));
				professor.setEmail(rs.getString("email"));
				professor.setDataDeCadastro(rs.getDate("dataDeCadastro"));
				professor.setTipoUsuario(rs.getString("tipoUsuario"));
				professor.setSexo(rs.getString("sexo"));
				professor.setTitulo(rs.getString("titulo"));
				professor.setCargo(rs.getString("cargo"));
				professor.setDetalheTitulo(rs.getString("detalheTitulo"));
				professor.setSala(rs.getString("sala"));
				professor.setPaginaPessoal(rs.getString("paginaPessoal"));
				professor.setCurriculo(rs.getString("curriculo"));
			}
			preparedStatement.close();
			return professor;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
		}
	}
	public static void insere(Professor professor, Connection connection) throws SQLException{
		String sql = "insert into usuario" +
				"(nome, email, senha, tipoUsuario, "
				+ "sexo, dataDeCadastro , status, titulo, cargo, detalheTitulo, sala, paginaPessoal, curriculo  )"
				+ " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, professor.getNome());
			stmt.setString(2, professor.getEmail());
			stmt.setString(3, getRandomPass(6));
			stmt.setString(4, "Professor");
			stmt.setString(5, professor.getSexo());
			stmt.setDate(6, new java.sql.Date(Calendar.getInstance().getTimeInMillis())); //Data de Cadastro
			stmt.setInt(7, 1);
			stmt.setString(8, professor.getTitulo());
			stmt.setString(9, professor.getCargo());
			stmt.setString(10, professor.getDetalheTitulo());
			stmt.setString(11, professor.getSala());
			stmt.setString(12, professor.getPaginaPessoal());
			stmt.setString(13, professor.getCurriculo());
			stmt.execute();
			stmt.close();
			System.out.println("Professor Gravado!");
			connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
		}
	}
	public static void deleta(int codUsuario, Connection connection) throws SQLException{
		String sql = "UPDATE USUARIO SET STATUS=0 WHERE CODUSUARIO=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, codUsuario);
		stmt.executeUpdate();

	}
	public static List<Projeto> listaProjetos(Connection connection, int codUsuario) throws SQLException{
		List<Projeto> projetos = new ArrayList<Projeto>();
		String sql = " select p.* from projeto p join projeto_has_professor pp on p.codprojeto=pp.codprojeto "
				+ " join usuario pro on pro.codusuario=pp.codusuario"
				+ " where pro.codusuario=? ";
		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, codUsuario);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				Projeto projeto = new Projeto();
				projeto.setCodProjeto(rs.getInt("codProjeto"));
				projeto.setNome(rs.getString("nome"));
				projeto.setTema(rs.getString("tema"));
				projeto.setTitulo(rs.getString("titulo"));
				projeto.setDataCadastro(rs.getDate("dataCadastro"));
				projeto.setDescricao(rs.getString("descricao"));
				projeto.setQuantidadeDeAlunos(rs.getString("quantidadeDeAlunos"));
				projeto.setCodtipoetapa(rs.getInt("codtipoetapa"));
	//			projeto.setPalavraChave(rs.getString("palavraChave"));
				projetos.add(projeto);
			}
			preparedStatement.close();
			return projetos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
		}
		// TODO Auto-generated method stub
	}
	
	public static List<AreaDeInteresse> listaAreasDeInteresse(Connection connection, int codUsuario) throws SQLException{
		List<AreaDeInteresse> areasDeInteresse = new ArrayList<AreaDeInteresse>();
		String sql = " select a.* from areadeinteresse a join areadeinteresse_has_professor ap on a.codAreaDeInteresse = ap.codAreaDeInteresse "
				+ " join usuario u on u.codusuario=ap.codusuario "
				+ " where u.codusuario=?";
		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, codUsuario);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				AreaDeInteresse  areaDeInteresse= new AreaDeInteresse();
				areaDeInteresse.setCodAreaDeInteresse(rs.getInt("codAreaDeInteresse"));
				areaDeInteresse.setNome(rs.getString("nome"));
				areaDeInteresse.setDescricao(rs.getString("descricao"));
				areaDeInteresse.setArea(rs.getString("area"));
				areasDeInteresse.add(areaDeInteresse);
			}
			preparedStatement.close();
			return areasDeInteresse;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
		}
		// TODO Auto-generated method stub
	}
	public static List<ProfessorExterno> listaProfessoresExterno(Connection connection, int codUsuario) throws SQLException{
		List<ProfessorExterno> professoresExterno = new ArrayList<ProfessorExterno>();
		String sql ="SELECT * FROM PROFESSOREXTERNO WHERE CODPROFESSOR="+codUsuario;
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
				professorExterno.setCodProfessor(rs.getInt("codProfessor"));
    			professoresExterno.add(professorExterno);
			}
			stmt.close();
			return professoresExterno;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//connection.close();
		}
	}
	public static List<Palavrachave> listaPalavrasChave(Connection connection, int codUsuario) throws SQLException{
		List<Palavrachave> palavraschave = new ArrayList<Palavrachave>();
		String sql = "select * from palavrachave where codProfessor=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setLong(1, codUsuario);
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
			
		}
	}

}




