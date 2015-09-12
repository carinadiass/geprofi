<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
				<ul class="errors">
					<c:if test="${not empty errors}">
						<div class="alert alert-danger" role="alert">
							<c:forEach items="${errors}" var="error">
								<h6>
									<i class="glyphicon glyphicon-exclamation-sign"> </i>
									${error.message}
								</h6>
							</c:forEach>
						</div>
					</c:if>
				</ul>
				<form id="formAluno" class="form-horizontal" role="form"
					action="${linkTo[ProfessoresController].salva}" method="POST"
					data-fv-framework="bootstrap"
					data-fv-icon-valid="glyphicon glyphicon-ok"
					data-fv-icon-invalid="glyphicon glyphicon-remove"
					data-fv-icon-validating="glyphicon glyphicon-refresh">
					<div class="form-group">
						<input type="hidden" name="professor.codUsuario"
							value="${professor.codUsuario}" /> <label
							class="col-md-4  col-xs-6  .col-sm-4 control-label" for="nome">Nome:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="nome"
								value="${professor.nome}" name="professor.nome" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="email">E-mail:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="email"
								value="${professor.email}" name="professor.email" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="titulo">Título:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="titulo"
								value="${professor.titulo}" name="professor.titulo" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="titulo">Cargo:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="titulo"
								value="${professor.cargo}" name="professor.cargo" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="sel1"> Sexo:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<select class="form-control input-sm" id="sel1"
								name="professor.sexo" value="${professor.sexo}">
								<option value="Masculino">Masculino</option>
								<option value="Feminino">Feminino</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="detalheTitulo">Detalhe de Título:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm"
								id="detalheTitulo" value="${professor.detalheTitulo}"
								name="professor.detalheTitulo" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="sala">Sala:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="sala"
								value="${professor.sala}" name="professor.sala" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="curriculo">Currículo Lattes:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="curriculo"
								value="${professor.curriculo}" name="professor.curriculo" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="paginaPessoal">Página Pessoal:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm"
								id="paginaPessoal" value="${professor.paginaPessoal}"
								name="professor.paginaPessoal" />
						</div>
					</div>
					<div class="modal-footer">
							<input type="submit" class="btn btn-primary">
							<c:if test="${not empty professor.codUsuario}">
						<span>	<a class="btn btn-primary "
								href="${linkTo[AreaDeInteresseController].formulario}?codUsuario=${professor.codUsuario}">
								<i class="glyphicon glyphicon-plus"> </i>Nova Área de Interesse
							</a></span><span>
							<a class="btn btn-primary "
								href="${linkTo[PalavraChaveController].formulario}?codUsuario=${professor.codUsuario}">
								<i class="glyphicon glyphicon-plus"> </i>Palavra-Chave
							</a></span>
						</c:if>
						</div>
				</form>