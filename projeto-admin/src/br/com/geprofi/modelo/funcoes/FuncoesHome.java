package br.com.geprofi.modelo.funcoes;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.geprofi.modelo.AreaDeInteresse;
import br.com.geprofi.modelo.Areadeinteresse_has_professor;
import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Professor;
import br.com.geprofi.modelo.Projeto;

public class FuncoesHome {
	public static List<Areadeinteresse_has_professor> listaAreasInteresse(Connection connection) throws SQLException{
		List<Areadeinteresse_has_professor> areadeinteresse_has_professor = new ArrayList<Areadeinteresse_has_professor>();
		String sql ="select  a.codAreaDeInteresse as codArea, a.nome as nome_area, a.descricao as descricao_area, a.area as area, u.nome as usuario_nome, "
				+ " u.email as usuario_email, u.sala as usuario_sala, u.codUsuario as codigo  from areadeinteresse_has_professor ap"
				+ " join areadeinteresse a on ap.codareadeinteresse=a.codareadeinteresse join usuario u on u.codUsuario=ap.codusuario" ;
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Areadeinteresse_has_professor  areaDeInteresse= new Areadeinteresse_has_professor();
				Professor prof = new Professor();
				AreaDeInteresse area = new AreaDeInteresse();
				
				prof.setSala(rs.getString("usuario_sala"));
				prof.setNome(rs.getString("usuario_nome"));
				prof.setCodUsuario(rs.getInt("codigo"));
				prof.setEmail(rs.getString("usuario_email"));
				area.setDescricao(rs.getString("descricao_area"));
				area.setArea(rs.getString("area"));
				area.setNome(rs.getString("nome_area"));
				area.setCodAreaDeInteresse(rs.getInt("codArea"));
				areaDeInteresse.setProfessor(prof);
				areaDeInteresse.setAreaDeInteresse(area);
				areadeinteresse_has_professor.add(areaDeInteresse);
			}
			stmt.close();
			return areadeinteresse_has_professor;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}finally {
			System.out.println("Fechei conexão!!!");
			connection.close();
		}
	}
	public static List<Projeto> lista(Connection connection) throws SQLException{
		List<Projeto> projetos = new ArrayList<Projeto>();
		String[] palavraChave = null;
		String sql ="select * from projeto where codtipoetapa=7";
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
				projeto.setNota(rs.getString("nota"));
				projeto.setSala(rs.getString("sala"));
				projeto.setDataApresentacao(rs.getDate("dataApresentacao"));
				projeto.setCodtipoetapa(rs.getInt("codtipoetapa"));
				projeto.setSituacao(rs.getString("situacao"));
				projeto.setInicio(rs.getString("inicio"));
				projeto.setTermino(rs.getString("termino"));
				
				if(rs.getString("palavraChave")!=null){
					palavraChave=rs.getString("palavraChave").split(";");
					
					projeto.setPalavraChave(palavraChave);
				}
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
	public static Arquivo buscaMonografi(Connection connection, int codProjeto){
		Arquivo arquivo= new Arquivo();
		String sql ="select * from arquivo  where codProjeto="+codProjeto+" and tipo=2 order by versao desc limit 1";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				arquivo.setCodProjeto(rs.getInt("codProjeto"));
				arquivo.setNome(rs.getString("nome"));
				arquivo.setCodArquivo(rs.getInt("codArquivo"));
				arquivo.setContentType(rs.getString("contentType"));
				arquivo.setDataCadastro(rs.getDate("dataCadastro"));
				arquivo.setVersao(rs.getInt("versao"));
				
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

}
