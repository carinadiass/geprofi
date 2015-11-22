package br.com.geprofi.controlador;

import java.io.File;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Banca;
import br.com.geprofi.modelo.dao.BancaDao;
import br.com.geprofi.modelo.jdbc.JDBCHomeDao;

@Controller
public class BancaController {
	public static String CAMINHO_UPLOAD_MONOGRAFIA="C:\\Users\\Carina\\Documents\\ProjetoFinal\\projeto\\monografias\\";
	private BancaDao dao;
	@Inject 
	public BancaController(BancaDao dao){
		this.dao=dao;
	} 
	public BancaController(){this(null);} 
	public void formulario(){}
	public Banca edita(int codBanca, Result result){
		Banca banca=null;
		System.out.println(codBanca);
		try{
			banca = dao.buscaPorCodBanca(codBanca);
			System.out.println(banca);
			result.include(banca);
			result.of(this).formulario();
			return banca;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return banca;
	}
	public void salva(@Valid Banca banca,int codProjeto,int codUsuario, Result result,Validator validator){
		
		String Assunto="Convite para participação de banca de Projeto Final";
		try {
			JDBCHomeDao daohome= new JDBCHomeDao();
			Arquivo arquivo = daohome.buscaArquivosCodProjeto(codProjeto);
			File file = new File(CAMINHO_UPLOAD_MONOGRAFIA +codProjeto,arquivo.getNome());
			SendMailTLS.enviarEmailComAnexo(banca.getConvite().replaceAll(";", ","), Assunto, "Testando Email", file.getAbsolutePath());
			validator.onErrorRedirectTo(ProjetosController.class).convidarBanca(codUsuario, codProjeto, result);
			dao.adiciona(banca, codProjeto);
			result.include("mensagem", "Convite enviado com sucesso!");
			
			result.forwardTo(ProjetosController.class).convidarBanca(codUsuario,codProjeto,result);
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<Banca> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codBanca,int codUsuario,int codProjeto,Result result ){
		try {
			dao.deleta(codBanca);
			result.include("mensagem", "Convite deletado com sucesso!");
			result.redirectTo(ProjetosController.class).convidarBanca( codUsuario, codProjeto, result);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
