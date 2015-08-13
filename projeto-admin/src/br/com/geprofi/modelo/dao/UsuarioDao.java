package br.com.geprofi.modelo.dao;

import br.com.geprofi.modelo.Usuario;

public interface UsuarioDao {
	
	Usuario autentica(String email, String senha);

}
