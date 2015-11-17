<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>		
		<table class="table table-striped">
			<thead>
				<tr>
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
						<td>${professorExterno.nome}</td>
						<td>${professorExterno.email}</td>
						<td>${professorExterno.universidadeOrigem}</td>
						<td>${professorExterno.areaDeAtuacao}</td>
						
						<td>
						<c:if test="${not empty professor.codUsuario}">
						<button type="button" class="btn btn-info btn-xs"
							data-toggle="modal"
							data-target=".bs-professorExterno${professorExterno.codProfessorExterno}-modal">
							<i class="fa fa-pencil"></i> Editar
						</button>
						<div
							class="modal fade bs-professorExterno${professorExterno.codProfessorExterno}-modal"
							tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">X</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">
											<i class="glyphicon glyphicon-file"></i> Cadastro Professor Externo
										</h4>
									</div>
									<div class="modal-body">
										<jsp:include page="formularioProfessorExterno.jsp">
											<jsp:param name="professor" value="${professor}" />
											<jsp:param name="codProfessorExterno" value="${professorExterno.codProfessorExterno}" />
											<jsp:param name="nome" value="${professorExterno.nome}" />
											<jsp:param name="email" value="${professorExterno.email}" />
											<jsp:param name="universidadeOrigem" value="${professorExterno.universidadeOrigem}" />
											<jsp:param name="areaDeAtuacao" value="${professorExterno.areaDeAtuacao}" />
										</jsp:include>
									</div>
								</div>
							</div>
						</div>
						<!--DIV class="modal fade bs-example-modal-lg"  -->
					</c:if>
						<td><a class="btn btn-danger btn-xs"
							href="${linkTo[ProfessorExternoController].delete}?codProfessorExterno=${professorExterno.codProfessorExterno}&codUsuario=${professor.codUsuario}"
							onclick="return confirmExclusao()" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
							Excluir </a></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
		
		
<div class="clearfix">
	<c:if test="${not empty professor.codUsuario}">
		<button type="button" class="btn btn-success" data-toggle="modal"
			data-target=".bs-professorExterno-modal">
			<i class="glyphicon glyphicon-plus"> </i>Professor Externo
		</button>
		<div class="modal fade bs-professorExterno-modal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">X</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">
							<i class="glyphicon glyphicon-file"></i> Cadastro de Professor Externo
						</h4>
					</div>
					<div class="modal-body">
						<jsp:include page="formularioProfessorExterno.jsp">
							<jsp:param name="professor" value="${professor}" />
						</jsp:include>
					</div>
				</div>
			</div>
		</div>
		<!--DIV class="modal fade bs-example-modal-lg"  -->
	</c:if>
</div>

<script>
	function confirmExclusao() {
		if (confirm("Tem certeza que deseja excluir?")) {
			return true;
		} else {
			return false;
		}
	}
</script>