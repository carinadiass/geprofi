package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.AreaDeInteresse;
import br.com.geprofi.modelo.Palavrachave;
import br.com.geprofi.modelo.Professor;
import br.com.geprofi.modelo.ProfessorExterno;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.dao.ProfessorDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesProfessor;

public class JDBCProfessorDao implements ProfessorDao {

	private Connection connection;
	public JDBCProfessorDao(){
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void adiciona(Professor professor) throws SQLException {
		if(professor.getCodUsuario()<1){
			FuncoesProfessor.insere(professor,connection);
		}else{
			FuncoesProfessor.atualiza(professor, professor.getCodUsuario(), connection);
		}
	}
	@Override
	public List<Professor> todos() throws SQLException {
		return FuncoesProfessor.lista(connection);
	}
	@Override
	public Professor buscaPorCodUsuario(int codUsuario) throws SQLException {
		return FuncoesProfessor.seleciona(connection, codUsuario);
	}
	@Override
	public Professor buscaPorCodProjeto(int codProjeto) throws SQLException {
		return FuncoesProfessor.selecionaProfessor(connection, codProjeto);
	}
	@Override
	public void deleta(int codUsuario) throws SQLException {
		FuncoesProfessor.deleta(codUsuario, connection);

	}
	public List<Projeto> projetosProfessor(int codUsuario) throws SQLException{
		return FuncoesProfessor.listaProjetos(connection,codUsuario);
		
	}
	@Override
	public List<Projeto> buscaProjeto_professor(int codProfessor)
			throws SQLException {
		 return FuncoesProfessor.listaProjetos(connection, codProfessor);
	}
	@Override
	public List<AreaDeInteresse> buscaAreaDeInteresse_professor(int codProfessor)
			throws SQLException {
		// TODO Auto-generated method stub
		 return FuncoesProfessor.listaAreasDeInteresse(connection, codProfessor);
	}
	@Override
	public List<ProfessorExterno> buscaProfessoresExterno_professor(int codProfessor)
			throws SQLException {
		// TODO Auto-generated method stub
		 return FuncoesProfessor.listaProfessoresExterno(connection, codProfessor);
	}
	@Override
	public List<Palavrachave> buscapalavraChave_professor(int codProfessor)
			throws SQLException {
		// TODO Auto-generated method stub
		 return FuncoesProfessor.listaPalavrasChave(connection, codProfessor);
	}
}
