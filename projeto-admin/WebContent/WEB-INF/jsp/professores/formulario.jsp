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
<title>Cadastro de Professores</title>
</head>
<body>
	<!-- Incluindo o jQuery que é requisito do JavaScript do Bootstrap -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- Incluindo o JavaScript do Bootstrap -->
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="glyphicon glyphicon-user"></i> Cadastro de Professor
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
					<div class="form-group">
						<div class="col-md-4  col-xs-6 .col-sm-4 control-label">
							<input type="submit" class="btn btn-primary input-sm">
						</div>
					</div>
				</form>
			</div>
		</div>
		</div>
		<c:if test="${not empty projetoList}">
			<div class="panel panel-primary">
				<!-- Default panel contents -->
				<div class="panel-heading">
					<h2 class="panel-title">
						<i class="glyphicon glyphicon-file"></i> Projetos Finais Cadastrados</h2>
				</div>
				<div class="panel-body">
					<p>Abaixo a relação de todos os projetos cadastrados:</p>
					<a class="btn btn-primary "
						href="${linkTo[ProjetosController].formulario}?codUsuario=${professor.codUsuario}"> <i
						class="glyphicon glyphicon-plus"> </i>Novo Projeto
					</a>
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
									href="${linkTo[ProjetosController].edita}?codProjeto=${projeto.codProjeto}"
									title="Editar Projeto"> <i class="glyphicon glyphicon-edit">
									</i>
								</a></td>
								<td><a class="btn btn-warning btn-sm"
									href="${linkTo[AlunosController].formulario}?codProjeto=${projeto.codProjeto}"
									title="Adicionar Usuário"> <i
										class="glyphicon glyphicon-user"> </i>
								</a></td>
								<td><a class="btn btn-default btn-sm"
									href="${linkTo[BancaController].formulario}?codProjeto=${projeto.codProjeto}"
									title="Adicionar Banca"> <i
										class="glyphicon glyphicon-eye-open"> </i>
								</a></td>
								<td><a class="btn btn-danger btn-sm"
									href="${linkTo[ProjetosController].delete}?codProjeto=${projeto.codProjeto}"
									title="Excluir Projeto"> <i
										class="glyphicon glyphicon-trash"> </i>
								</a></td>
							</tr>
					</c:forEach>
					</tbody>
				</table>
				<hr class="colorgraph">
			</div>
		</c:if>
</body>
</html>