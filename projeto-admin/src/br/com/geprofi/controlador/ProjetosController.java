package br.com.geprofi.controlador;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
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
import br.com.geprofi.modelo.jdbc.JDBCProfessorDao;
import br.com.geprofi.modelo.jdbc.JDBCProjetoDao;

@Controller
public class ProjetosController {
	private ProjetoDao dao;  
	public static String CAMINHO_UPLOAD="C:\\Users\\Carina\\Documents\\ProjetoFinal\\projeto\\arquivos\\";
	public static String CAMINHO_UPLOAD_MONOGRAFIA="C:\\Users\\Carina\\Documents\\ProjetoFinal\\projeto\\monografias\\";

	@Inject
	public ProjetosController(ProjetoDao dao){
		this.dao=dao;
	}
	protected  ProjetosController(){this(null);}
	public void formulario() {}
	public void fluxoprojeto() {}
	public void formwizardprojeto() {}
	public void convidarBanca(int codUsuario,int codProjeto,Result result) {
		try {
			JDBCProfessorDao daoProf= new JDBCProfessorDao();
			result.include("ListProfessoresExterno", daoProf.buscaProfessoresExterno_professor(codUsuario));  
			result.include("ListProfessores", daoProf.todos());  
			result.include("codProjeto", codProjeto);  
			JDBCProjetoDao daoProj= new JDBCProjetoDao();
			daoProj.atualizaEtapaProjeto(codProjeto, 5);
		}catch (SQLException e) {

		}
	}
	//@Get("/projeto/novo/{codUsuario}")
	public void fluxogeprofi(int codUsuario,int codProjeto,Result result) throws SQLException {
		try {
			JDBCProfessorDao daoProf= new JDBCProfessorDao();
			result.include("ListpalavrasChave", daoProf.buscapalavraChave_professor(codUsuario));  
			result.include("codProfessor", codUsuario);  
			if(codProjeto!=0){
				Projeto projetoEncontrado = null;
				projetoEncontrado = dao.buscaPorCodProjeto(codProjeto);
				int codtipoetapa = projetoEncontrado.getCodtipoetapa();
				result.include(projetoEncontrado);
				result.include("alunoList", dao.buscaAlunosCodProjeto(codProjeto));
				result.include("codUsuario", codUsuario);  
				if(codtipoetapa==2){
					result.include("alunoList", dao.buscaAlunosCodProjeto(projetoEncontrado.getCodProjeto()));
					result.include("arquivoList",dao.buscaArquivosCodProjeto(projetoEncontrado.getCodProjeto(),1));
					result.include("codProjeto",projetoEncontrado.getCodProjeto()).redirectTo(AlunosController.class).cadaluno();
				}if(codtipoetapa==3){
					result.include("alunoList", dao.buscaAlunosCodProjeto(projetoEncontrado.getCodProjeto()));
					result.include("arquivoList",dao.buscaArquivosCodProjeto(projetoEncontrado.getCodProjeto(),1));
					result.include("codProjeto",projetoEncontrado.getCodProjeto()).redirectTo(this).desenvProj(codProjeto);
				}if(codtipoetapa==4){
					result.include("Professor", daoProf.buscaPorCodProjeto(codProjeto));  
					result.include("arquivoList",dao.buscaArquivosCodProjeto(projetoEncontrado.getCodProjeto(),2));
					result.include("projeto",dao.buscaPorCodProjeto(codProjeto));
					//result.redirectTo(this).desenvProj();
					result.include("alunoList", dao.buscaAlunosCodProjeto(codProjeto));
					result.forwardTo(this).validaMonografia(codProjeto,result);
				}if(codtipoetapa==5){
					result.include("ListProfessoresExterno", daoProf.buscaProfessoresExterno_professor(codUsuario));  
					result.include("ListProfessores", daoProf.todos());  
					result.include("codProjeto", codProjeto);  
					result.forwardTo(this).convidarBanca(codUsuario,codProjeto,result);
				}
			}
		}catch (SQLException e) {

		}
	}
	public void desenvProj(int codProjeto) throws SQLException{
		
		JDBCProjetoDao daoProj= new JDBCProjetoDao();
		daoProj.atualizaEtapaProjeto(codProjeto, 3);
		
	}
	public void validaMonografia(int codProjeto,Result result){
		try {
			JDBCProfessorDao daoProf= new JDBCProfessorDao();
			System.out.println(daoProf.buscaPorCodProjeto(codProjeto));
			JDBCProjetoDao daoProj= new JDBCProjetoDao();
			daoProj.atualizaEtapaProjeto(codProjeto, 4);
			result.include("Professor", daoProf.buscaPorCodProjeto(codProjeto));  
		}catch (SQLException e) {

		}
	}
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
			result.include("arquivoList",dao.buscaArquivosCodProjeto(codProjeto,1));
			result.forwardTo(this).desenvProj( codProjeto);
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
			validator.onErrorRedirectTo(this).fluxogeprofi(codUsuario,0,result);
			dao.adiciona(projeto, codUsuario);
			if(projeto.getCodProjeto()==0){
				result.include("alunoList", dao.buscaAlunosCodProjeto(dao.pegaUltimoProjeto()));
				result.include("codProjeto",dao.pegaUltimoProjeto()).forwardTo(AlunosController.class).cadaluno();
			}else{
				result.include("alunoList", dao.buscaAlunosCodProjeto(projeto.getCodProjeto()));
				result.include("arquivoList",dao.buscaArquivosCodProjeto(dao.pegaUltimoProjeto(),1));
				result.include("codProjeto",projeto.getCodProjeto()).forwardTo(AlunosController.class).cadaluno();
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			result.include("errors", "Projeto não salvo com sucesso!");
			result.forwardTo(this).lista();
			e.printStackTrace();
		} 
	}
	@Post
	@UploadSizeLimit(sizeLimit=40 * 1024 * 1024, fileSizeLimit=10 * 1024 * 1024)
	public void uploadArquivo(Result result,int codProjeto, Validator validator, List<UploadedFile> files) throws SQLException{
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
			validator.onErrorRedirectTo(this).desenvProj(codProjeto);
			result.include("projeto",dao.buscaPorCodProjeto(codProjeto));
			//result.redirectTo(this).desenvProj();
			result.include("alunoList", dao.buscaAlunosCodProjeto(codProjeto));
			result.include("arquivoList",dao.buscaArquivosCodProjeto(codProjeto,1));
			//result.forwardTo(this).validaMonografia();
			result.forwardTo(this).desenvProj(codProjeto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result.of(this).desenvProj(codProjeto);
	}
	@Post
	@UploadSizeLimit(sizeLimit=40 * 1024 * 1024, fileSizeLimit=10 * 1024 * 1024)
	public void uploadMonografia(Result result,int codProjeto, Validator validator, List<UploadedFile> files) throws SQLException{
		try {
			UploadedFile arquivo = null;
			System.out.println("Quantidade de Arquivos: " +files.size());
			if(files.size()>0){
				JDBCProjetoDao daoProj= new JDBCProjetoDao();
				daoProj.atualizaEtapaProjeto(codProjeto, 4);
				for(int i=0;i<files.size();i++){
					System.out.println("Arquivo: " +files.get(i));
					arquivo=files.get(i);
					if (arquivo != null) {
						FuncoesProjeto.uploadMonografia(dao, codProjeto, arquivo);
					}
				}
			}
			validator.onErrorRedirectTo(this).validaMonografia(codProjeto,result);
			result.include("projeto",dao.buscaPorCodProjeto(codProjeto));
			//result.redirectTo(this).desenvProj();
			result.include("alunoList", dao.buscaAlunosCodProjeto(codProjeto));
			result.include("arquivoList",dao.buscaArquivosCodProjeto(codProjeto,2));
			result.forwardTo(this).validaMonografia(codProjeto,result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result.of(this).desenvProj(codProjeto);
	}
	public List<Projeto> lista() {
		try {
			return dao.todos();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public Download downloadArquivo(int codArquivo, int codProjeto) throws SQLException {
		try {
			Arquivo arquivo = dao.buscaArquivoCodArquivo(codArquivo);
			System.out.println("Tentando Download Arquivo:" +arquivo.getNome());
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
	public Download downloadMonografia(int codArquivo, int codProjeto) throws SQLException {
		try {
			Arquivo arquivo = dao.buscaArquivoCodArquivo(codArquivo);
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
	public void delete(int codProjeto, int codUsuario, Result result){
		try {
			dao.deleta(codProjeto);
			result.include("mensagem", "Projeto deletado com sucesso!");
			result.forwardTo(ProfessoresController.class).pfhome(codUsuario, result);
			//result.redirectTo(this).lista();
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
