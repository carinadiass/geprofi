<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<form id="formAluno" class="form-horizontal" role="form"
					action="${linkTo[ProfessoresController].salva}" method="POST"
					data-fv-framework="bootstrap"
					data-fv-icon-valid="glyphicon glyphicon-ok"
					data-fv-icon-invalid="glyphicon glyphicon-remove"
					data-fv-icon-validating="glyphicon glyphicon-refresh">
					<div class="form-group">
						<input type="hidden" name="professor.codUsuario"
							value="${professor.codUsuario}" /> <label
							 for="nome">Nome*:</label>
						<div>
							<input type="text" class="form-control input-sm" id="nome"
								value="${professor.nome}" name="professor.nome" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="email">E-mail*:</label>
						<div>
							<input type="text" class="form-control input-sm" id="email"
								value="${professor.email}" name="professor.email" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="titulo">Título:</label>
						<div>
							<input type="text" class="form-control input-sm" id="titulo"
								value="${professor.titulo}" name="professor.titulo" />
						</div>
					</div>
					<div class="form-group">
						<label 
							for="titulo">Cargo:</label>
						<div>
							<input type="text" class="form-control input-sm" id="titulo"
								value="${professor.cargo}" name="professor.cargo" />
						</div>
					</div>

					<div class="form-group">
						<label 
							for="sel1"> Sexo:</label>
						<div>
							<select class="form-control input-sm" id="sel1"
								name="professor.sexo" value="${professor.sexo}">
								<option value="Masculino">Masculino</option>
								<option value="Feminino">Feminino</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label
							for="detalheTitulo">Detalhe de Título:</label>
						<div>
							<input type="text" class="form-control input-sm"
								id="detalheTitulo" value="${professor.detalheTitulo}"
								name="professor.detalheTitulo" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="sala">Sala:</label>
						<div>
							<input type="text" class="form-control input-sm" id="sala"
								value="${professor.sala}" name="professor.sala" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="curriculo">Currículo Lattes:</label>
						<div>
							<input type="text" class="form-control input-sm" id="curriculo"
								value="${professor.curriculo}" name="professor.curriculo" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="paginaPessoal">Página Pessoal:</label>
						<div>
							<input type="text" class="form-control input-sm"
								id="paginaPessoal" value="${professor.paginaPessoal}"
								name="professor.paginaPessoal"/>
						</div>
					</div>
					<div class="modal-footer">
			 		<input type="submit" class="btn btn-success" value="Salvar">
						<!--		<c:if test="${not empty professor.codUsuario}">
						<span>	<a class="btn btn-round btn-info"
								href="${linkTo[AreaDeInteresseController].formulario}?codUsuario=${professor.codUsuario}">
								<i class="glyphicon glyphicon-plus"> </i>Área de Interesse
							</a></span><span>
							<a class="btn btn-round btn-success"
								href="${linkTo[PalavraChaveController].formulario}?codUsuario=${professor.codUsuario}">
								<i class="glyphicon glyphicon-plus"> </i>Palavra-Chave
							</a></span>
						</c:if>-->	
						</div> 
				</form>