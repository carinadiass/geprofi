package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.ProfessorExterno;
import br.com.geprofi.modelo.dao.ProfessorExternoDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesProfessor;
import br.com.geprofi.modelo.funcoes.FuncoesProfessorExterno;

public class JDBCProfessorExternoDao implements ProfessorExternoDao {

	private Connection connection;
	public JDBCProfessorExternoDao(){
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	@Override
	public ProfessorExterno buscaPorCodProfessorExterno(int codProfessorExterno)
			throws SQLException {
		return FuncoesProfessorExterno.seleciona(connection, codProfessorExterno);
	}
	@Override
	public void adiciona(ProfessorExterno professorExterno) throws SQLException {
		if(professorExterno.getCodProfessoExterno()<1){
			FuncoesProfessorExterno.insere(professorExterno,connection);
		}else{
			FuncoesProfessorExterno.atualiza(professorExterno, professorExterno.getCodProfessoExterno(), connection);
		}
	}
	@Override
	public List<ProfessorExterno> todos() throws SQLException {
		return FuncoesProfessorExterno.lista(connection);
	}
	@Override
	public void deleta(int codProfessorExterno) throws SQLException {
		FuncoesProfessorExterno.deleta(codProfessorExterno, connection);
		
	}

}
