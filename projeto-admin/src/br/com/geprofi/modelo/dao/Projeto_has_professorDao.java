package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Projeto_has_professor;

public interface Projeto_has_professorDao {

	List<Projeto_has_professor> todos() throws SQLException;

	void deleta(int codProjeto, int codProfessor) throws SQLException;

	void adiciona(Projeto_has_professor proj_prof) throws SQLException;

	Projeto_has_professor buscaPorCodProjeto(int codUsuario) throws SQLException;

	
}
