package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Projeto_has_professor;
import br.com.geprofi.modelo.dao.Projeto_has_professorDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesProfessor;
import br.com.geprofi.modelo.funcoes.FuncoesProjeto_has_professor;

public class JDBCProjeto_has_professorDao implements Projeto_has_professorDao {

	
	private Connection connection;
	public JDBCProjeto_has_professorDao(){
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<Projeto_has_professor> todos()  throws SQLException {
		// TODO Auto-generated method stub
		FuncoesProjeto_has_professor.lista(connection);
		return null;
	}
	@Override
	public void deleta(int codProjeto, int codProfessor)  throws SQLException{
		FuncoesProjeto_has_professor.deleta(codProjeto, codProfessor, connection);
		
	}
	@Override
	public void adiciona(Projeto_has_professor proj_prof)  throws SQLException{
		// TODO Auto-generated method stub
		if(proj_prof.getCodUsuario()<1){
			FuncoesProjeto_has_professor.insere(proj_prof,connection);
		}else{
			FuncoesProjeto_has_professor.atualiza(proj_prof, proj_prof.getCodUsuario(), connection);
		}
	}
	@Override
	public Projeto_has_professor buscaPorCodProjeto(int codUsuario)  throws SQLException {
		// TODO Auto-generated method stub
		FuncoesProjeto_has_professor.seleciona(connection, codUsuario);
		return null;
	}

}
