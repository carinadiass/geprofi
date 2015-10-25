package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.Aluno;
import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.dao.ProjetoDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesProjeto;

public class JDBCProjetoDao implements ProjetoDao{

	private Connection connection;
	public JDBCProjetoDao(){
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public void adiciona(Projeto projeto, int codUsuario) throws SQLException {
		if(projeto.getCodProjeto()<1){
			FuncoesProjeto.insere(projeto,codUsuario,connection);
		}else{
			FuncoesProjeto.atualiza(projeto, projeto.getCodProjeto(), connection);
		}
	}
	@Override
	public List<Projeto> todos() throws SQLException {
		return FuncoesProjeto.lista(connection);
	}
	@Override
	public Projeto buscaPorCodProjeto(int codProjeto) throws SQLException {
		return FuncoesProjeto.seleciona(connection, codProjeto);
	}
	@Override
	public void deleta(int codProjeto) throws SQLException {
		FuncoesProjeto.deleta(codProjeto, connection);
	}
	@Override
	public List<Aluno> buscaAlunosCodProjeto(int codProjeto) throws SQLException {
		return FuncoesProjeto.listaAlunos(codProjeto, connection);
	}
	@Override
	public void adicionaArquivo(Arquivo arquivo,int codProjeto)
			throws SQLException {
		FuncoesProjeto.insereArquivo(arquivo, codProjeto, connection);
		
	}
	@Override
	public int pegaUltimoProjeto() throws SQLException {
		// TODO Auto-generated method stub
		return FuncoesProjeto.pegaUlitmoProjeto(connection);
	}
	
	


}
