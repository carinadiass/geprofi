package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Palavrachave;
import br.com.geprofi.modelo.Professor;
import br.com.geprofi.modelo.ProfessorExterno;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.AreaDeInteresse;

public interface ProfessorDao {
	
	void adiciona(Professor professor) throws SQLException;

	List<Professor> todos() throws SQLException;

	Professor buscaPorCodUsuario(int codUsuario) throws SQLException;
	
	void deleta(int codUsuario) throws SQLException;

	List<Projeto> buscaProjeto_professor(int codProfessor) throws SQLException;

	List<AreaDeInteresse> buscaAreaDeInteresse_professor(int codProfessor) throws SQLException;

	List<Palavrachave>  buscapalavraChave_professor(int codProfessor)  throws SQLException;

	List<ProfessorExterno> buscaProfessoresExterno_professor(int codProfessor) throws SQLException;

	Professor buscaPorCodProjeto(int codProjeto) throws SQLException;


}
