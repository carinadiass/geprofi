package br.com.geprofi.controlador;


import javax.inject.Inject;

import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.simplemail.Mailer;

@Controller
public class PasswordResetterController {

    private final String user;
    private final Mailer mailer;
    
    public PasswordResetterController(String user, Mailer mailer) {
        this.user = user;
        this.mailer = mailer;
    }
    public void formulario() {}
    
    public void sendNewPassword() {
        Email email = new SimpleEmail();
        email.setSubject("Your new password");
        try {
			email.addTo("carinadiass@gmil.com");
		    email.setMsg("Testndo");
	        mailer.send(email); // Hostname, port and security settings are made by the Mailer
		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    
    }

}