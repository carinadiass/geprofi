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
<title>Lista de Palavras-Chave</title>
</head>
<body>
	<!-- cria o DAO -->
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-file"></i> Palavras-Chave Cadastradas
			</h2>
		</div>
		<div class="panel-body">
			<p>Abaixo a relação de todas as Palavras-Chave :</p>
			<a class="btn btn-primary "
				href="${linkTo[PalavraChaveController].formulario}"> <i
				class="glyphicon glyphicon-plus"> </i>Nova Palavra-Chave
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
					<th>Palavra-Chave</th>
					<th>Código do Professor</th>
					<th colspan=2>Ação</th>
				</tr>
			</thead>
			<c:forEach var="palavrachave" items="${palavrachaveList}" varStatus="id">
				<tbody>
					<tr>
						<td>${palavrachave.codPalavraChave}</td>
						<td>${palavrachave.palavra}</td>
						<td>${palavrachave.codProfessor}</td>
						<td><a class="btn btn-info btn-sm"
							href="${linkTo[PalavraChaveController].edita}?codPalavraChave=${palavrachave.codPalavraChave}"
							title="Editar Palavra"> <i class="glyphicon glyphicon-edit">
							</i>
						</a></td>
						<td><a class="btn btn-danger btn-sm"
							href="${linkTo[PalavraChaveController].delete}?codPalavraChave=${palavrachave.codPalavraChave}"
							onclick="return confirmExclusao()" title="Excluir Palavra"> <i class="glyphicon glyphicon-remove">
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