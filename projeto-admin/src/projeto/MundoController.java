package projeto;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;


@Controller
public class MundoController {

    @Inject private Result result;
	
	public void ola() {
		result.include("mensagem", "Olá, VRaptor 4!");
		System.out.println(result);
	}
}