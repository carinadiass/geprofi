<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<!-- start user projects -->
<a class="btn btn-success"
				href="${linkTo[ProjetosController].fluxogeprofi}?codUsuario=${professor.codUsuario}" > <i
				class="glyphicon glyphicon-plus"> </i>Novo Projeto</a>
				<br>
<table class="data table table-striped no-margin">
	<thead>
		<tr>
			<th>Nome</th>
			<th>Tema</th>
			<th>Progresso</th>
			<th>Etapa</th>
			<th>Ações</th>
		</tr>
	</thead>
	<c:forEach var="projeto" items="${projetoList}" varStatus="id">
		<tbody>
			<tr>
				<td><a>${projeto.nome}</a> <br /> <small>Criado em <fmt:formatDate
							value="${projeto.dataCadastro}" pattern="dd/MM/yyyy" />
				</small></td>
				<td>${projeto.tema}</td>
				<td class="project_progress">
					<div class="progress progress_sm">
						<div class="progress-bar bg-green" role="progressbar"
							data-transitiongoal="77"></div>
					</div> <small>77% Complete</small>
				</td>
				<td>
					<button type="button" class="btn btn-success btn-xs">Success</button>
				</td>
				<td><a href="#" class="btn btn-primary btn-xs"><i
						class="fa fa-folder"></i> View </a> <a
					href="${linkTo[ProjetosController].edita}?codProjeto=${projeto.codProjeto}"
					class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Editar
				</a> <a
					href="${linkTo[ProjetosController].delete}?codProjeto=${projeto.codProjeto}&codUsuario=${professor.codUsuario}"
					class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
						Excluir </a></td>
			</tr>
	</c:forEach>
	</tbody>
</table>


<!-- end user projects -->
