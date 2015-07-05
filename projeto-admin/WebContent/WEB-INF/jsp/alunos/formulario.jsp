<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<%@include file="../primeira/header.jsp"%>
<title>Cadastro de Alunos</title>
</head>
<body>
<%
    String codProjeto = request.getParameter("codProjeto");
%>
	<!-- Incluindo o jQuery que é requisito do JavaScript do Bootstrap -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- Incluindo o JavaScript do Bootstrap -->
	<script src="../../js/bootstrap.min.js"></script>
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="glyphicon glyphicon-user"></i> Cadastro de Alunos
			</h3>
		</div>
		<div class="panel-body">
			<form class="form-horizontal" id="formAluno" class="form-horizontal"
				role="form" action="${linkTo[AlunosController].salva}" method="POST"
				data-fv-framework="bootstrap"
				data-fv-icon-valid="glyphicon glyphicon-ok"
				data-fv-icon-invalid="glyphicon glyphicon-remove"
				data-fv-icon-validating="glyphicon glyphicon-refresh">
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
				  <input type="hidden" name="aluno.codProjeto"
					value="${param.codProjeto}" />
				<input type="hidden" name="param.codUsuario"
					value="${aluno.codUsuario}" />
				<div class="form-group">
					<label class="col-md-4 col-xs-6  .col-sm-4 control-label"
						for="aluno.nome">Nome:</label>
					<div class="col-md-4  col-xs-6 .col-sm-4">
						<input id="aluno.nome" name="aluno.nome" value="${aluno.nome}"
							class="form-control input-sm" type="text">
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4  col-xs-6 .col-sm-4 control-label"
						for="aluno.email">E-mail:</label>
					<div class="col-md-4  col-xs-6 .col-sm-4">
						<input id="aluno.email" name="aluno.email" placeholder="E-mail"
							value="${aluno.email}" class="form-control input-sm" type="text">
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
						for="aluno.dre">Dre:</label>
					<div class="col-md-2  col-xs-4 .col-sm-4">
						<input id="aluno.dre" name="aluno.dre" value="${aluno.dre}"
							class="form-control input-sm" type="text">
					</div>
				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
						for="aluno.dre">Curso:</label>
					<div class="col-md-4  col-xs-4 .col-sm-4">
						<input id="aluno.curso" name="aluno.curso" value="${aluno.curso}"
							class="form-control input-sm" type="text">
					</div>
				</div>
				<!-- Select Basic -->
				<div class="form-group">
					<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
						for="aluno.sexo">Sexo:</label>
					<div class="col-md-3  col-xs-5 .col-sm-3">
						<select id="aluno.sexo" name="aluno.sexo"
							class="form-control input-sm" placeholder="Sexo"
							value="${aluno.sexo}">
							<option value="Masculino">Masculino</option>
							<option value="Feminino">Feminino</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-4  col-xs-6 .col-sm-4 control-label">
						<input type="submit" class="btn btn-primary input-sm">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>