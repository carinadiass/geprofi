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
<title>Cadastro de Banca</title>
</head>
<body>
	<%
		String codProjeto = request.getParameter("codProjeto");
	%>
	<!-- Incluindo o jQuery que � requisito do JavaScript do Bootstrap -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<!-- Incluindo o JavaScript do Bootstrap -->
	<script src="../../js/bootstrap.min.js"></script>
	<div class="panel panel-primary">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<h3 class="panel-title">
				<i class="glyphicon glyphicon-file"></i> Cadastro de Banca
			</h3>
		</div>
		<div class="panel-body">
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
			<form id="formArea" class="form-horizontal" role="form"
				action="${linkTo[BancaController].salva}" method="POST"
				data-fv-framework="bootstrap"
				data-fv-icon-valid="glyphicon glyphicon-ok"
				data-fv-icon-invalid="glyphicon glyphicon-remove"
				data-fv-icon-validating="glyphicon glyphicon-refresh">
				
				<div class="form-group">
					<input type="hidden" name="banca.codBanca"
						value="${banca.codBanca}" />
				   <input type="hidden"
						name="banca.codProjeto" value="${param.codProjeto}" />
					<div class="form-group">
						<label class="col-md-4  col-xs-6 .col-sm-4 control-label"
							for="nome">Quantidade de Participantes:</label>
						<div class="col-md-4  col-xs-6 .col-sm-4">
							<input type="text" class="form-control input-sm" id="banca"
								value="${banca.quantidadeDeParticipantes}"
								name="banca.quantidadeDeParticipantes" />
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
</body>

</html>