package br.com.geprofi.controlador;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.download.Download;
import br.com.caelum.vraptor.observer.download.FileDownload;
import br.com.caelum.vraptor.observer.upload.UploadSizeLimit;
import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Arquivo;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.dao.ProjetoDao;
import br.com.geprofi.modelo.funcoes.FuncoesProjeto;

@Controller
public class ProjetosController {
	private ProjetoDao dao;  
	public static String CAMINHO_UPLOAD="C:\\Users\\Carina\\Documents\\ProjetoFinal\\projeto\\arquivos\\";

	@Inject
	public ProjetosController(ProjetoDao dao){
		this.dao=dao;
	}
	protected  ProjetosController(){this(null);}
	public void formulario() {}
	public void fluxoprojeto() {}
	public void formwizardprojeto() {}
	public void fluxogeprofi() {}
	public void desenvProj(){}
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
	public Projeto visualiza(int codProjeto, Result result) {
		Projeto projetoEncontrado = null;
		try {
			projetoEncontrado = dao.buscaPorCodProjeto(codProjeto);
			result.include(projetoEncontrado);
			result.include("alunoList", dao.buscaAlunosCodProjeto(codProjeto));
			result.of(this).desenvProj();
			return projetoEncontrado;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return projetoEncontrado;
	}
	@Post
	@UploadSizeLimit(sizeLimit=40 * 1024 * 1024, fileSizeLimit=10 * 1024 * 1024)
	public void salva(@Valid Projeto projeto,int codUsuario,Result result,Validator validator,  UploadedFile arquivo) {
		try {
			validator.onErrorRedirectTo(this).fluxogeprofi();
			dao.adiciona(projeto, codUsuario);
		   /*if (arquivo != null) {
				FuncoesProjeto.uploadArquivo(dao, projeto, arquivo);
			}*/
			if(projeto.getCodProjeto()==0){
				result.include("alunoList", dao.buscaAlunosCodProjeto(dao.pegaUltimoProjeto()));
				result.include("codProjeto",dao.pegaUltimoProjeto()).redirectTo(AlunosController.class).cadaluno();
			}else{
				result.include("alunoList", dao.buscaAlunosCodProjeto(projeto.getCodProjeto()));
				result.include("codProjeto",projeto.getCodProjeto()).redirectTo(AlunosController.class).cadaluno();
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			result.include("errors", "Projeto n�o salvo com sucesso!");
			result.redirectTo(this).lista();
			e.printStackTrace();
		} 
	}
	@Post
	@UploadSizeLimit(sizeLimit=40 * 1024 * 1024, fileSizeLimit=10 * 1024 * 1024)
	public void uploadArquivo(Result result,int codProjeto, Validator validator, List<UploadedFile> files){
		try {
			UploadedFile arquivo = null;
			System.out.println("Quantidade de Arquivos: " +files.size());
			if(files.size()>0){
				for(int i=0;i<files.size();i++){
					System.out.println("Arquivo: " +files.get(i));
					arquivo=files.get(i);
					if (arquivo != null) {
						FuncoesProjeto.uploadArquivo(dao, codProjeto, arquivo);
					}
				}
			}
			validator.onErrorRedirectTo(this).desenvProj();
			result.include("projeto",dao.buscaPorCodProjeto(codProjeto));
			result.redirectTo(this).desenvProj();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result.of(this).desenvProj();
	}
	public List<Projeto> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Download consulta(Arquivo arquivo, int codProjeto) {
		try {
			File file = new File(CAMINHO_UPLOAD +codProjeto,arquivo.getNome());
			String contentType = arquivo.getContentType();
			String filename = arquivo.getNome();
			return new FileDownload(file, contentType, filename);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;

		}
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
