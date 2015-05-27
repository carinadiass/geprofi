package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Professor;

public interface ProfessorDao {
	
	void adiciona(Professor professor) throws SQLException;

	List<Professor> todos() throws SQLException;

	Professor buscaPorCodUsuario(int codUsuario) throws SQLException;
	
	void deleta(int codUsuario) throws SQLException;


}
