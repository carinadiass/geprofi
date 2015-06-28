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
<%@include file="../primeira/header.jsp"%>
<title>Lista de Projetos</title>
</head>
<body>
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-file"></i> Projetos Finais Cadastrados
			</h2>
		</div>
		<div class="panel-body">
			<p>Abaixo a relação de todos os projetos cadastrados:</p>
			<a class="btn btn-primary "
				href="${linkTo[ProjetosController].formulario}" > <i
				class="glyphicon glyphicon-plus"> </i>Novo Projeto</a>
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
					<th>Tema</th>
					<th>Título</th>
					<th>Alunos</th>
					<th>Date de Cadastro</th>
					<th colspan=4>Ações</th>
				</tr>
			</thead>
			<c:forEach var="projeto" items="${projetoList}" varStatus="id">
				<tbody>
					<tr>
						<td>${projeto.codProjeto}</td>
						<td>${projeto.nome}</td>
						<td>${projeto.tema}</td>
						<td>${projeto.titulo}</td>
						<td>${projeto.quantidadeDeAlunos}</td>
						<td><fmt:formatDate value="${projeto.dataCadastro}"
								pattern="dd/MM/yyyy" />
						<td><a class="btn  btn-info btn-sm" 
							href="${linkTo[ProjetosController].edita}?codProjeto=${projeto.codProjeto}" title="Editar Projeto">
							<i class="glyphicon glyphicon-edit"> </i>								
								</a></td>
						<td><a class="btn btn-warning btn-sm"
							href="${linkTo[AlunosController].formulario}?codProjeto=${projeto.codProjeto}" title="Adicionar Usuário">
							<i class="glyphicon glyphicon-user"> </i>
								</a></td>
								<td><a class="btn btn-default btn-sm"
							href="${linkTo[BancaController].formulario}?codProjeto=${projeto.codProjeto}" title="Adicionar Banca">
							<i class="glyphicon glyphicon-education"> </i>
								</a></td>
						<td><a class="btn btn-danger btn-sm"
							href="${linkTo[ProjetosController].delete}?codProjeto=${projeto.codProjeto}" title="Excluir Projeto">
								<i class="glyphicon glyphicon-remove"> </i> 
								</a></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
	<hr class="colorgraph">
	</div>
</body>
</html>