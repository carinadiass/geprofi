package br.com.geprofi.modelo.funcoes;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.google.common.io.ByteStreams;

import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.geprofi.modelo.Aluno;
import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.dao.ProjetoDao;

public class FuncoesProjeto {
	public static String CAMINHO_UPLOAD="C:\\Users\\Carina\\Documents\\ProjetoFinal\\projeto\\arquivos\\";
	//public static String CAMINHO_UPLOAD2="/projeto-admin/WebContent/WEB-INF/arquivos/";
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
			//	connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void uploadArquivo(ProjetoDao dao, int codProjeto, UploadedFile arquivo){
		
		if (arquivo != null) {
			try {
				Arquivo novoArquivo=new Arquivo(arquivo.getFileName(),ByteStreams.toByteArray(arquivo.getFile()),arquivo.getContentType(),
						new java.sql.Date(Calendar.getInstance().getTimeInMillis()));
				File arquivoSalvo = new File(CAMINHO_UPLOAD+codProjeto);
				if(!arquivoSalvo.exists()){
					if (arquivoSalvo.mkdirs()) {
						System.out.println("Multiple directories are created!");
						arquivoSalvo =new File(CAMINHO_UPLOAD+codProjeto,arquivo.getFileName());  
					}
				}else{
					arquivoSalvo =new File(CAMINHO_UPLOAD+codProjeto,arquivo.getFileName()); 
				}
				arquivo.writeTo(arquivoSalvo);
				System.out.println("Entrei aki no arquivo!@@@");
				System.out.println(ByteStreams.toByteArray(arquivo.getFile()));
				dao.adicionaArquivo(novoArquivo, codProjeto);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public static List<Arquivo> listaArquivos(Connection connection, int codProjeto){
		List<Arquivo> arquivos = new ArrayList<Arquivo>();
		String sql ="SELECT * FROM ARQUIVO WHERE CODPROJETO="+codProjeto;
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Arquivo arquivo= new Arquivo();
				arquivo.setCodProjeto(rs.getInt("codProjeto"));
				arquivo.setNome(rs.getString("nome"));
				arquivo.setCodArquivo(rs.getInt("codArquivo"));
				arquivo.setContentType(rs.getString("contentType"));
				arquivo.setDataCadastro(rs.getDate("dataCadastro"));
				arquivos.add(arquivo);
			}
			stmt.close();
			//	connection.close();
			return arquivos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//connection.close();
		}
		
	}
	
	public static void insereArquivo(Arquivo arquivo,int codProjeto, Connection connection) throws SQLException{
		String sql = "insert into arquivo" +
				"(codProjeto, nome, versao, dataCadastro, contentType )"
				+ " VALUES (?,?,?,?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setLong(1, codProjeto);
			stmt.setString(2, arquivo.getNome());
			stmt.setLong(3, 1);
			stmt.setDate(4, new java.sql.Date(Calendar.getInstance().getTimeInMillis()));
			stmt.setString(5, arquivo.getContentType());
		//	stmt.setByte(6, arquivo.getConteudo()); //Data de Cadastro
			stmt.execute();
			stmt.close();
			System.out.println("Arquivo Gravado!");
		  //  connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			//connection.close();
		}
		
	}
	public static Arquivo selecionaArquivo(Connection connection, int codArquivo ) throws SQLException{
		Arquivo arquivo= new Arquivo();
		String sql ="SELECT * FROM ARQUIVO WHERE codArquivo="+codArquivo;
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				arquivo.setCodProjeto(rs.getInt("codProjeto"));
				arquivo.setNome(rs.getString("nome"));
				arquivo.setCodArquivo(rs.getInt("codArquivo"));
				arquivo.setContentType(rs.getString("contentType"));
				arquivo.setDataCadastro(rs.getDate("dataCadastro"));
			}
			stmt.close();
			//	connection.close();
			return arquivo;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//connection.close();
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
			//	connection.close();
			return projetos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//connection.close();
		}
	}
	public static Projeto seleciona(Connection connection, int codProjeto) throws SQLException{
		Projeto projeto= new Projeto();
		String sql ="SELECT * FROM PROJETO WHERE codProjeto=?";
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
			//	connection.close();
			return projeto;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//	connection.close();
		}
	}
	public static void insere(Projeto projeto, int codUsuario,Connection connection) throws SQLException{
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
			 insereProjeto_Professor(pegaUlitmoProjeto(connection),codUsuario, connection);
			//	connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			//		connection.close();
		}
	}
	public static int pegaUlitmoProjeto(Connection connection)  throws SQLException{
		int codProjeto=0;
		String sql ="select max(codprojeto) as codigo from projeto";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()){
				System.out.println(rs.getInt("codigo"));
				codProjeto=rs.getInt("codigo");
			}
			stmt.close();
			return codProjeto;
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			//		connection.close();
		}
		
	}
	public static void insereProjeto_Professor(int codProjeto, int codUsuario, Connection connection) throws SQLException{
		String sql = "insert into projeto_has_professor" +
				"(codProjeto, codUsuario )"
				+ " VALUES (?,?)";
		try{
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1, codProjeto);
			stmt.setInt(2, codUsuario);
			stmt.execute();
			stmt.close();
			System.out.println("Projeto_has_professor Gravado!");
			//	connection.close();
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}finally{
			//		connection.close();
		}
	}
	public static void deleta(int codProjeto, Connection connection) throws SQLException{
		String sql = "DELETE FROM PROJETO WHERE codProjeto=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setInt(1, codProjeto);
		stmt.executeUpdate();
		//	connection.close();

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
			//connection.close();
			return alunos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			//connection.close();
		}
	}


}
