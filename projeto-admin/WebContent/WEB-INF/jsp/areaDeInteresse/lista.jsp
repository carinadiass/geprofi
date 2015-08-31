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
	<script src=<c:url value="../js/funcoes.js"/>  type='text/javascript'>
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lista de Áreas de Interesse</title>
</head>
<body>
	<!-- cria o DAO -->
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<h2 class="panel-title">
				<i class="glyphicon glyphicon-file"></i> Áreas de Interesse
				Cadastradas
			</h2>
		</div>
		<div class="panel-body">
			<p>Abaixo a relação de todas as áreas de Interesse cadastrados:</p>
			<a class="btn btn-primary "
				href="${linkTo[AreaDeInteresseController].formulario}"> <i
				class="glyphicon glyphicon-plus"> </i>Nova Área de Interesse
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
					<th>Área</th>
					<th>Nome</th>
					<th>Descricao</th>
					<th colspan=2>Ação</th>
				</tr>
			</thead>
			<c:forEach var="areaDeInteresse" items="${areaDeInteresseList}"
				varStatus="id">
				<tbody>
					<tr>
						<td>${areaDeInteresse.codAreaDeInteresse}</td>
						<td>${areaDeInteresse.area}</td>
						<td>${areaDeInteresse.nome}</td>
						<td>${areaDeInteresse.descricao}</td>
						<td><a class="btn  btn-info btn-sm"
							href="${linkTo[AreaDeInteresseController].edita}?codAreaDeInteresse=${areaDeInteresse.codAreaDeInteresse}"
							title="Editar Área"> <i class="glyphicon glyphicon-edit">
							</i>
						</a></td>
						<td><a class="btn btn-danger btn-sm"
							id="testeAreaDeInteresse"
							href="${linkTo[AreaDeInteresseController].delete}?codAreaDeInteresse=${areaDeInteresse.codAreaDeInteresse}"
							onclick="return confirmExclusao()" title="Excluir Área"> <i
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