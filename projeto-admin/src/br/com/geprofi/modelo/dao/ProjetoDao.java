package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Aluno;
import br.com.geprofi.modelo.Projeto;


public interface ProjetoDao {
	void adiciona(Projeto projeto) throws SQLException;

	List<Projeto> todos() throws SQLException;

	Projeto buscaPorCodProjeto(int codProjeto) throws SQLException;
	
	void deleta(int codProjeto) throws SQLException;
	
	List<Aluno> buscaAlunosCodProjeto(int codProjeto) throws SQLException;

}
