<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="../primeira/header.jsp" %>
<title>Cadastro de Projeto</title>
</head>
<body>
	<!-- Incluindo o jQuery que é requisito do JavaScript do Bootstrap -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- Incluindo o JavaScript do Bootstrap -->
	<script src="../../js/bootstrap.min.js"></script>
	<ul class="errors">
			<c:forEach items="${errors}" var="error">
				<!-- o campo em que ocorreu o erro, ou o tipo do erro -->
				<!-- a mensagem de erro de validação -->
				<div class="alert alert-danger" role="alert">
					<span class="glyphicon glyphicon-exclamation-sign"
						aria-hidden="true"></span> <span class="sr-only">Error:</span>
						${error.message}
				</div>
			</c:forEach>
		</ul>
		<fieldset>
			<form id="formAluno" class="form-horizontal" role="form"
				action="${linkTo[ProjetosController].salva}" method="POST"
				data-fv-framework="bootstrap"
				data-fv-icon-valid="glyphicon glyphicon-ok"
				data-fv-icon-invalid="glyphicon glyphicon-remove"
				data-fv-icon-validating="glyphicon glyphicon-refresh">
				<!-- Form Name -->
				<legend>Cadastro de Projeto</legend>
			
				<!-- Text input-->
				<div class="form-group">
					<input type="hidden" name="projeto.codProjeto"
						value="${projeto.codProjeto}" /> <label
						class="col-md-4 control-label" for="projeto.nome">Nome</label>
					<div class="col-md-4">
					
						<input id="projeto.nome" name="projeto.nome" placeholder=""
							value="${projeto.nome}" class="form-control input-sm" type="text">

					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="projeto.tema">Tema</label>
					<div class="col-md-4">
						<input id="projeto.tema" name="projeto.tema" placeholder=""
							value="${projeto.tema}" class="form-control input-sm" type="text">

					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="projeto.titulo">Título</label>
					<div class="col-md-5">
						<input id="projeto.titulo" name="projeto.titulo" placeholder=""
							value="${projeto.titulo}" class="form-control input-sm"
							type="text">

					</div>
				</div>
				<!-- Textarea -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="projeto.descricao">Descrição</label>
					<div class="col-md-4">
						<textarea class="form-control" id="projeto.descricao"
							name="projeto.descricao">${projeto.descricao}</textarea>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="aluno.sexo">Quantidade
						De Alunos</label>
					<div class="col-md-1">
						<select id="aluno.sexo" name="projeto.quantidadeDeAlunos"
							value="${projeto.quantidadeDeAlunos}" class="form-control input-sm">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="projeto.nota">Nota</label>
					<div class="col-md-2">
						<input id="projeto.nota" name="projeto.nota" placeholder=""
							value="${projeto.nota}" class="form-control input-sm" type="text">

					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="projeto.palavraChave">Palavras
						Chave</label>
					<div class="col-md-5">
						<input id="projeto.palavraChave" name="projeto.palavraChave"
							placeholder="" value="${projeto.palavraChave}"
							class="form-control input-sm" type="text">
					</div>
				</div>
				<div class="form-group">
					<div class="control-label col-sm-2 input-sm">
						<input type="submit" class="btn btn-default">
					</div>
			</form>

		</fieldset>
	</div>
</body>
</html>