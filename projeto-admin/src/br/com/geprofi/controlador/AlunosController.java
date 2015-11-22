 package br.com.geprofi.controlador;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.simplemail.Mailer;
import br.com.caelum.vraptor.validator.Validator;
import br.com.geprofi.modelo.Aluno;
import br.com.geprofi.modelo.dao.AlunoDao;
import br.com.geprofi.modelo.jdbc.JDBCProfessorDao;
import br.com.geprofi.modelo.jdbc.JDBCProjetoDao;

@Controller
public class AlunosController {

	private AlunoDao dao;
	private Mailer mailer;  
	@Inject
	public AlunosController(AlunoDao dao, Mailer mailer){
		this.dao=dao;
		this.mailer = mailer;
	}
    protected AlunosController(){}
	public void formulario() {}
	
	@Get("/projeto/aluno")
	public void cadaluno() {}
	
	public Aluno edita(int codUsuario, Result result) {
		Aluno alunoEncontrado = null;
		try {
			JDBCProjetoDao daoProj= new JDBCProjetoDao();
			alunoEncontrado = dao.buscaPorCodUsuario(codUsuario);
			result.include(alunoEncontrado);
			System.out.println(alunoEncontrado.getNome());
			result.include("alunoList", daoProj.buscaAlunosCodProjeto(alunoEncontrado.getCodProjeto()));
			result.include("codProjeto", alunoEncontrado.getCodProjeto());
			result.of(this).cadaluno();
			return alunoEncontrado;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return alunoEncontrado;
	}
	public void salva(@Valid Aluno aluno,Result result,Validator validator) throws EmailException {
		String corpo = "Prezado(a),"
				+ "Seus dados de acesso ao sistema s�o: ";
		try {
			validator.onErrorRedirectTo(this).cadaluno();
			dao.adiciona(aluno);
			JDBCProjetoDao daoProj= new JDBCProjetoDao();
			daoProj.atualizaEtapaProjeto(aluno.getCodProjeto(), 2);
			result.include("mensagem", "Aluno salvo com sucesso!");
			result.include("alunoList", dao.todos(aluno.getCodProjeto()));
			result.include("codProjeto", aluno.getCodProjeto());
			sendNewPassword(aluno.getEmail(),"Conta de Acesso ao GeProFi", corpo+ " <br> Login:" + aluno.getEmail()+ "<br> Senha:" + aluno.getSenha());
			result.forwardTo(this).cadaluno();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	public List<Aluno> lista() {
		try {
			return dao.todos(0);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public void delete(int codUsuario, Result result){
		try {
			dao.deleta(codUsuario);
			result.include("mensagem", "Aluno deletado com sucesso!");
			result.redirectTo(this).lista();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Path("/password/send")
	public void sendNewPassword(String to, String subject, String corpo) throws EmailException {
		SendMailTLS.enviarEmail(to,subject,corpo);
	}
}	
