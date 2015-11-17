package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.ProfessorExterno;

public interface ProfessorExternoDao {

	ProfessorExterno buscaPorCodProfessorExterno(int codProfessorExterno) throws SQLException;
	
	void adiciona(ProfessorExterno professorExterno,int codProfessor) throws SQLException;

	List<ProfessorExterno> todos() throws SQLException;

	void deleta(int codProfessorExterno) throws SQLException;

}
