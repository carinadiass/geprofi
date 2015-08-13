package br.com.geprofi.controlador;

import java.util.List;

import javax.ejb.Startup;

import net.diegomaia.vraptor.saci.interfaces.Profile;

@Startup
public class Perfil implements Profile {

	@Override
	public int getAccessLevel() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<String> getRoles() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isLoggedIn() {
		// TODO Auto-generated method stub
		return false;
	}

}
