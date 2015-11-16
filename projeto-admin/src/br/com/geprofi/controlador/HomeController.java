package br.com.geprofi.controlador;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;

@Controller
public class HomeController {
	
	 @Inject private Result result;

	   
	    public void index() {
	        result.include("mensagem", "Olá, VRaptor 4!");
	    }
	    public void home() {
	        
	    }
	    public void areaPorArea() {
	        
	    }
	    public void areaPorProfessor() {
	       
	    }
	    public void projetosFinalizados() {
		       
	    }
	    public void projetosFinalizados1() {
		       
	    }
	    public void areadeInteresse() {
		       
	    }



}
