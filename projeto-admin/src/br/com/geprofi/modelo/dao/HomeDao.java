package br.com.geprofi.modelo.dao;

import java.sql.SQLException;
import java.util.List;

import javax.enterprise.context.RequestScoped;

import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.Areadeinteresse_has_professor;

@RequestScoped
public interface HomeDao {
	
	List<Projeto> projetoFinalizados() throws SQLException;
	
	Arquivo buscaArquivosCodProjeto(int codProjeto) throws SQLException;

	List<Areadeinteresse_has_professor> areasInteresseUsuario()
			throws SQLException;

}
