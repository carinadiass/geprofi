package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import javax.enterprise.context.RequestScoped;

import br.com.geprofi.modelo.Aluno;
import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Projeto;


@RequestScoped
public interface ProjetoDao {

	List<Projeto> todos() throws SQLException;

	Projeto buscaPorCodProjeto(int codProjeto) throws SQLException;
	
	void deleta(int codProjeto) throws SQLException;
	
	List<Aluno> buscaAlunosCodProjeto(int codProjeto) throws SQLException;
	
	//List<Arquivo> buscaArquivosCodProjeto(int codProjeto) throws SQLException;
	
	Arquivo buscaArquivoCodArquivo(int codArquivo) throws SQLException;

	void adiciona(Projeto projeto, int codUsuario) throws SQLException;
	
	void adicionaArquivo(Arquivo arquivo, int codProjeto) throws SQLException;
	
	int pegaUltimoProjeto() throws SQLException;

	int buscaVersaoMonografia(int codProjeto) throws SQLException;

	List<Arquivo> buscaArquivosCodProjeto(int codProjeto, int tipo) throws SQLException;
	 
	

}
