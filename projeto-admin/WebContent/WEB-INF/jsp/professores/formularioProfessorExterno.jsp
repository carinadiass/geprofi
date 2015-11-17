
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
			String codigo = request.getParameter("codigo");
			String palavra = request.getParameter("palavra");
		%>

<form id="formPalavraChave" class="form-horizontal" role="form"
	action="${linkTo[ProfessorExternoController].salva}?codUsuario=${professor.codUsuario}"
	method="POST" data-fv-framework="bootstrap"
	data-fv-icon-valid="glyphicon glyphicon-ok"
	data-fv-icon-invalid="glyphicon glyphicon-remove"
	data-fv-icon-validating="glyphicon glyphicon-refresh">

	<input type="hidden" name="professorExterno.codProfessor"
		value="${professor.codUsuario}" />
	<div class="form-group">
		<input type="hidden" name="professorExterno.codProfessorExterno"
			value="${param.codProfessorExterno}" /> <input
			type="hidden" name="professorExterno.codBanca"
			value="${param.codBanca}" /> <label for="nome">Nome:</label>
		<div>
			<input type="text" class="form-control input-sm" id="nome"
				value="${param.nome}" name="professorExterno.nome" />
		</div>
	</div>
	<div class="form-group">
		<label for="email">E-mail:</label>
		<div>
			<input type="text" class="form-control input-sm" id="email"
				value="${param.email}" name="professorExterno.email" />
		</div>
	</div>
	<div class="form-group">
		<label for="titulo">Universidade de Origem:</label>
		<div>
			<input type="text" class="form-control input-sm" id="titulo"
				value="${param.universidadeOrigem}"
				name="professorExterno.universidadeOrigem" />
		</div>
	</div>
	<div class="form-group">
		<label for="titulo">Área de Atuação:</label>
		<div>
			<input type="text" class="form-control input-sm" id="titulo"
				value="${param.areaDeAtuacao}"
				name="professorExterno.areaDeAtuacao" />
		</div>
	</div>
	<div class="form-group">
						<div >
							<input type="submit" class="btn btn-primary input-sm">
						</div>
					</div>
</form>
