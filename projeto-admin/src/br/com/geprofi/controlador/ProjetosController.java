package br.com.geprofi.controlador;

import java.io.IOException;
import java.net.URI;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;
import com.google.common.io.ByteStreams;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.dao.Diretorio;
import br.com.geprofi.modelo.dao.ProjetoDao;

@Controller
public class ProjetosController {
	private ProjetoDao dao;  

	@Inject
	public ProjetosController(ProjetoDao dao){
		this.dao=dao;
	}
	protected  ProjetosController(){this(null);}
	public void formulario() {}
	public void fluxoprojeto() {}
	public Projeto edita(int codProjeto, Result result) {
		Projeto projetoEncontrado = null;
		try {
			projetoEncontrado = dao.buscaPorCodProjeto(codProjeto);
			result.include(projetoEncontrado);
			result.include("alunoList", dao.buscaAlunosCodProjeto(codProjeto));
			result.of(this).formulario();
			return projetoEncontrado;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return projetoEncontrado;
	}
	public void salva(@Valid Projeto projeto,int codUsuario,Result result,Validator validator, UploadedFile arquivo) throws IOException {
		try {
			validator.onErrorRedirectTo(this).formulario();
			dao.adiciona(projeto, codUsuario);
			if (arquivo != null) {
				Arquivo novoArquivo=new Arquivo(arquivo.getFileName(),ByteStreams.toByteArray(arquivo.getFile()),arquivo.getContentType(),
						Calendar.getInstance());
				System.out.println("Entrei aki no arquivo!@@@");
				System.out.println(ByteStreams.toByteArray(arquivo.getFile()));
				dao.adicionaArquivo(novoArquivo, projeto);
				
				//TO DO        arquivos.setCapa(imagemCapa);
			}

			result.include("mensagem", "Projeto salvo com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<Projeto> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codProjeto, Result result){
		try {
			dao.deleta(codProjeto);
			result.include("mensagem", "Projeto deletado com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	public void pegaAluno(int codProjeto,Result result){
		try {
			result.include("alunoList", dao.buscaAlunosCodProjeto(codProjeto));

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
