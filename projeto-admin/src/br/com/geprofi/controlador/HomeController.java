package br.com.geprofi.controlador;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.SQLException;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.download.Download;
import br.com.caelum.vraptor.observer.download.FileDownload;
import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.dao.HomeDao;
import br.com.geprofi.modelo.dao.ProjetoDao;

@Controller
public class HomeController {
	public static String CAMINHO_UPLOAD_MONOGRAFIA="C:\\Users\\Carina\\Documents\\ProjetoFinal\\projeto\\monografias\\";
	private HomeDao dao;

	@Inject
	public HomeController(HomeDao dao){
		this.dao=dao;
	}

	protected  HomeController(){this(null);}
	public void index(Result result) {
		result.include("mensagem", "Olá, VRaptor 4!");
	}
	public void home() {

	}
	public void areaPorArea(Result result) {
		try {
			result.include("ListAreasProfessores", dao.areasInteresseUsuario());
		}catch (SQLException e) {

		}	
		
	}
	public void areaPorProfessor(Result result) {
		try {
			result.include("ListAreasProfessores", dao.areasInteresseUsuario());
		}catch (SQLException e) {

		}	

	}
	public void projetosFinalizados(Result result) throws SQLException {
		try {
			result.include("ListPorjetos", dao.projetoFinalizados());
		}catch (SQLException e) {

		}


	}
	public void projetosFinalizados1() {

	}
	public void areadeInteresse(Result result) {
		try {
			result.include("ListAreasProfessores", dao.areasInteresseUsuario());
		}catch (SQLException e) {

		}	
	}
	public Download downloadMonografia(int codProjeto) throws SQLException {
		try {
			Arquivo arquivo = dao.buscaArquivosCodProjeto(codProjeto);
			System.out.println("Tentando Download Arquivo:" +arquivo.getNome());
			File file = new File(CAMINHO_UPLOAD_MONOGRAFIA +codProjeto,arquivo.getNome());
			String contentType = arquivo.getContentType();
			String filename = arquivo.getNome();
			return new FileDownload(file, contentType, filename);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}


}
