package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;

import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Aluno;
import br.com.geprofi.modelo.dao.AlunoDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesAluno;

public class JDBCAlunoDao implements AlunoDao {

	private Connection connection;
	public JDBCAlunoDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void adiciona(Aluno aluno) throws SQLException{
		if(aluno.getCodUsuario()<1){
			FuncoesAluno.insere(aluno,connection);
		}else{
			FuncoesAluno.atualiza(aluno, aluno.getCodUsuario(), connection);
		}
	}
	@Override
	public List<Aluno> todos() throws SQLException {
	      return FuncoesAluno.lista(connection);
	}
	@Override
	public Aluno buscaPorCodUsuario(int codUsuario) throws SQLException {
		return FuncoesAluno.seleciona(connection, codUsuario);
	}
	@Override
	public void deleta(int codUsuario) throws SQLException {
		FuncoesAluno.deleta(codUsuario, connection);
	}
	
	
}



