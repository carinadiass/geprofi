package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.observer.upload.UploadSizeLimit;
import br.com.caelum.vraptor.observer.upload.UploadedFile;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Projeto;
import br.com.geprofi.modelo.dao.ProjetoDao;
import br.com.geprofi.modelo.funcoes.FuncoesProjeto;

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
	@Post
	@UploadSizeLimit(sizeLimit=40 * 1024 * 1024, fileSizeLimit=10 * 1024 * 1024)
	public void salva(@Valid Projeto projeto,int codUsuario,Result result,Validator validator,  UploadedFile arquivo) {
		try {
			validator.onErrorRedirectTo(this).fluxogeprofi();
			dao.adiciona(projeto, codUsuario);
			if (arquivo != null) {
				FuncoesProjeto.uploadArquivo(dao, projeto, arquivo);
			}
	     result.include("codProjeto",dao.pegaUltimoProjeto()).redirectTo(AlunosController.class).cadaluno();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			result.include("errors", "Projeto não salvo com sucesso!");
			result.redirectTo(this).lista();
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
