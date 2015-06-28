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
<title>Lista de  Banca</title>
</head>
<body>
	<!-- cria o DAO -->
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-file"></i> Bancas Cadastradas
			</h2>
		</div>
		<div class="panel-body">
			<p>Abaixo a relação de todas as Bancas :</p>
			<a class="btn btn-primary "
				href="${linkTo[BancaController].formulario}"> <i
				class="glyphicon glyphicon-plus"> </i>Nova Banca
			</a>
			<hr class="colorgraph">
		</div>
		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				${mensagem}
				<p id="demo"></p>
			</div>
		</c:if>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Quantidade de Participantes</th>
					<th>Codigo do Projeto</th>
					<th colspan=2>Ação</th>
				</tr>
			</thead>
			<c:forEach var="banca" items="${bancaList}" varStatus="id">
				<tbody>
					<tr>
						<td>${banca.codBanca}</td>
						<td>${banca.quantidadeDeParticipantes}</td>
						<td>${banca.codProjeto}</td>
						<td><a class="btn btn-info btn-sm"
							href="${linkTo[BancaController].edita}?codBanca=${banca.codBanca}"
							title="Editar Área"> <i class="glyphicon glyphicon-edit">
							</i>
						</a></td>
						<td><a class="btn btn-danger btn-sm"
							href="${linkTo[BancaController].delete}?codBanca=${banca.codBanca}"
							onclick="return confirmExclusao()" title="Excluir Área"> <i class="glyphicon glyphicon-remove">
							  </i>
						</a></td>

					</tr>
			</c:forEach>
			</tbody>
		</table>
		<hr class="colorgraph">
	</div>
</body>
<script>
	function confirmExclusao() {
		if (confirm("Tem certeza que deseja excluir?")) {
			return true;
		} else {
			return false;
		}
	}
</script>
</html>