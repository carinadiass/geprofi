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
<title>Lista de Professores</title>
</head>
<body>
	<!-- Incluindo o jQuery que é requisito do JavaScript do Bootstrap -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- Incluindo o JavaScript do Bootstrap -->
	<script src="../../js/bootstrap.min.js"></script>
	<!-- cria o DAO -->
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
		<h2 class="panel-title">
				<i class="glyphicon glyphicon-user"></i> Professores Externo Cadastrados
			</h2>
		</div>
		<div class="panel-body">
			<p>Abaixo a relação de todos os professores externos cadastrados:</p>
			<a class="btn btn-primary "
				href="${linkTo[ProfessorExternoController].formulario}" > <i
				class="glyphicon glyphicon-plus"> </i>Novo Professor</a>
					<hr class="colorgraph">
		</div>
		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				${mensagem}
			</div>
		</c:if>


		<table class="table table-striped">
			<thead>
				<tr>
					<th>codProfessorExterno</th>
					<th>codBanca</th>
					<th>Nome</th>
					<th>Email</th>
					<th>Universidade de Origem</th>
					<th>Área De Atuação</th>
					<th colspan=2>Ação</th>
				</tr>
			</thead>
			<c:forEach var="professorExterno" items="${professorExternoList}" varStatus="id">

				<tbody>
					<tr>
						<td>${professorExterno.codProfessorExterno}</td>
						<td>${professorExterno.codBanca}</td>
						<td>${professorExterno.nome}</td>
						<td>${professorExterno.email}</td>
						<td>${professorExterno.universidadeOrigem}</td>
						<td>${professorExterno.areaDeAtuacao}</td>

						<td><a class="btn  btn-info btn-sm"
							href="${linkTo[ProfessorExternoController].edita}?codProfessorExterno=${professorExterno.codProfessorExterno}"
							title="Editar Professor"> <i class="glyphicon glyphicon-edit">
							</i>
						</a></td>
						<td><a class="btn btn-danger btn-sm"
							href="${linkTo[ProfessorExternoController].delete}?codProfessorExterno=${professorExterno.codProfessorExterno}"
							title="Excluir Professor"> <i
								class="glyphicon glyphicon-remove"> </i>
						</a></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
			<hr class="colorgraph">
	</div>
</body>
</html>