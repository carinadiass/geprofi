<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script
			src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type"
			content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
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
				<i class="glyphicon glyphicon-user"></i> Professores Cadastrados
			</h2>
		</div>
		<div class="panel-body">
			<p>Abaixo a relação de todos os professores cadastrados:</p>
			<a class="btn btn-primary "
				href="${linkTo[ProfessoresController].formulario}" > <i
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
					<th>ID</th>
					<th>Nome</th>
					<th>Email</th>
					<th>Data de Cadastro</th>
					<th colspan=2>Ação</th>
				</tr>
			</thead>
			<c:forEach var="professor" items="${professorList}" varStatus="id">

				<tbody>
					<tr>
						<td>${professor.codUsuario}</td>
						<td>${professor.nome}</td>
						<td>${professor.email}</td>
						<td><fmt:formatDate value="${professor.dataDeCadastro}"
								pattern="dd/MM/yyyy" /></td>
						<td><a class="btn  btn-info btn-sm"
							href="${linkTo[ProfessoresController].edita}?codUsuario=${professor.codUsuario}"
							title="Editar Professor"> <i class="glyphicon glyphicon-edit">
							</i>
						</a></td>
						<td><a class="btn btn-warning btn-sm"
							href="${linkTo[ProjetosController].formulario}?codUsuario=${professor.codUsuario}"
							title="Criar Projeto"> <i
								class="glyphicon glyphicon-folder-open"> </i>
						</a></td>
						<td><a class="btn btn-danger btn-sm"
							href="${linkTo[ProfessoresController].delete}?codUsuario=${professor.codUsuario}"
							title="Excluir Professor"> <i
								class="glyphicon glyphicon-trash"> </i>
						</a></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
			<hr class="colorgraph">
	</div>
</body>
</html>