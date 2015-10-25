package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Aluno;

public interface AlunoDao {

	void adiciona(Aluno aluno) throws SQLException;

	List<Aluno> todos(int codProjeto) throws SQLException;

	Aluno buscaPorCodUsuario(int codUsuario) throws SQLException;
	
	void deleta(int codUsuario) throws SQLException;
	
}
