package br.com.geprofi.modelo.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import br.com.geprofi.modelo.AreaDeInteresse;
import br.com.geprofi.modelo.dao.AreaDeInteresseDao;
import br.com.geprofi.modelo.funcoes.ConnectionFactory;
import br.com.geprofi.modelo.funcoes.FuncoesAreaDeInteresse;

public class JDBCAreasDeInteresseDao implements AreaDeInteresseDao {
	
	private Connection connection;

	public JDBCAreasDeInteresseDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void adiciona(AreaDeInteresse areaDeInteresse) throws SQLException {
		if(areaDeInteresse.getCodAreaDeInteresse()<1){
			FuncoesAreaDeInteresse.insere(areaDeInteresse,connection);
		}else{
			FuncoesAreaDeInteresse.atualiza(areaDeInteresse, areaDeInteresse.getCodAreaDeInteresse(), connection);
		}
	}
	@Override
	public List<AreaDeInteresse> todos( ) throws SQLException {
		return FuncoesAreaDeInteresse.lista(connection);
	}
	@Override
	public AreaDeInteresse buscaPorCodArea(int codAreaDeInteresse) throws SQLException {
		System.out.println("Dentro do buscaPorCodArea:"+codAreaDeInteresse);
		return FuncoesAreaDeInteresse.seleciona(connection, codAreaDeInteresse);
	}
	@Override
	public void deleta(int codAreaDeInteresse) throws SQLException {
		FuncoesAreaDeInteresse.deleta(codAreaDeInteresse, connection);
		
	}



}
