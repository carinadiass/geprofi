<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="../primeira/header.jsp"%>
<title>Cadastro de Professor Externo</title>
</head>
<body>
<%
    String codBanca = request.getParameter("codBanca");
    System.out.println(codBanca);
%>
	
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="glyphicon glyphicon-user"></i> Cadastro de Professor Externo
			</h3>
		</div>
		<div class="panel-body">
			<div class="container">

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
					action="${linkTo[ProfessorExternoController].salva}" method="POST"
					data-fv-framework="bootstrap"
					data-fv-icon-valid="glyphicon glyphicon-ok"
					data-fv-icon-invalid="glyphicon glyphicon-remove"
					data-fv-icon-validating="glyphicon glyphicon-refresh">
					<div class="form-group">
						<input type="hidden" name="professorExterno.codProfessorExterno"
							value="${professorExterno.codProfessorExterno}" />
					  <input type="hidden" name="professorExterno.codBanca"
					value="${param.codBanca}" />
					 <label
							class="col-md-4  col-xs-6  .col-sm-4 control-label" for="nome">Nome:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="nome"
								value="${professorExterno.nome}" name="professorExterno.nome" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="email">E-mail:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="email"
								value="${professorExterno.email}" name="professorExterno.email" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="titulo">Universidade de Origem:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="titulo"
								value="${professorExterno.universidadeOrigem}" name="professorExterno.universidadeOrigem" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-4  col-xs-6  .col-sm-4 control-label"
							for="titulo">Área de Atuação</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="titulo"
								value="${professorExterno.areaDeAtuacao}" name="professorExterno.areaDeAtuacao" />
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