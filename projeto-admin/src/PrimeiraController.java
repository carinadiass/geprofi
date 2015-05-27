import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;

@Controller
public class PrimeiraController {

    @Inject private Result result;

   
    public void index() {
        result.include("mensagem", "Olá, VRaptor 4!");
    }
    public void header() {
        result.include("mensagem", "Olá, VRaptor 4!");
    }
  
    public void login() {
        result.include("mensagem", "Olá, VRaptor 4!");
    }
  
}

