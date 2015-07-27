package br.com.geprofi.modelo.dao;

import java.net.URI;

import br.com.geprofi.modelo.Arquivo;

public interface Diretorio {

	URI grava(Arquivo arquivo);
	
	Arquivo recupera(URI chave);
}
