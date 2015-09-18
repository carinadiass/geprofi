<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>		
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Palavra-Chave</th>
					<th colspan=2>Ação</th>
				</tr>
			</thead>
			<c:forEach var="palavraChave" items="${palavraChaveList}" varStatus="id">
				<tbody>
					<tr>
						<td>${palavraChave.palavra}</td>
						
						<td>
						<c:if test="${not empty professor.codUsuario}">
						<button type="button" class="btn btn-info btn-xs"
							data-toggle="modal"
							data-target=".bs-palavra${palavraChave.codPalavraChave}-modal">
							<i class="fa fa-pencil"></i> Editar
						</button>
						<div
							class="modal fade bs-palavra${palavraChave.codPalavraChave}-modal"
							tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog modal-sm">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">X</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">
											<i class="glyphicon glyphicon-file"></i> Cadastro de Palavra
											Chave
										</h4>
									</div>
									<div class="modal-body">
										<jsp:include page="formularioPalavraChave.jsp">
											<jsp:param name="professor" value="${professor}" />
											<jsp:param name="codigo" value="${palavraChave.codPalavraChave}" />
											<jsp:param name="palavra" value="${palavraChave.palavra}" />
										</jsp:include>
									</div>
								</div>
							</div>
						</div>
						<!--DIV class="modal fade bs-example-modal-lg"  -->
					</c:if> <a class="btn btn-info btn-sm"
							href="${linkTo[PalavraChaveController].edita}?codPalavraChave=${palavraChave.codPalavraChave}"
							title="Editar Palavra"> <i class="glyphicon glyphicon-edit">
							</i>
						</a></td>
						<td><a class="btn btn-danger btn-xs"
							href="${linkTo[PalavraChaveController].delete}?codPalavraChave=${palavraChave.codPalavraChave}"
							onclick="return confirmExclusao()" title="Excluir Palavra"> <i class="glyphicon glyphicon-remove">
							  </i>
						</a></td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
		
		
<div class="clearfix">
	<c:if test="${not empty professor.codUsuario}">
		<button type="button" class="btn btn-success" data-toggle="modal"
			data-target=".bs-palavra-modal">
			<i class="glyphicon glyphicon-plus"> </i>Palavra-Chave
		</button>
		<div class="modal fade bs-palavra-modal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">X</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">
							<i class="glyphicon glyphicon-file"></i> Cadastro de Palavra-Chave
						</h4>
					</div>
					<div class="modal-body">
						<jsp:include page="formularioPalavraChave.jsp">
							<jsp:param name="professor" value="${professor}" />
						</jsp:include>
					</div>
				</div>
			</div>
		</div>
		<!--DIV class="modal fade bs-example-modal-lg"  -->
	</c:if>
</div>