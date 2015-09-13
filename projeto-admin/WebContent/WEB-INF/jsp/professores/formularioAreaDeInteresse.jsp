<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
  String codUsuario = request.getParameter("codUsuario");
%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
				action="${linkTo[AreaDeInteresseController].salva}?codUsuario=${professor.codUsuario}" method="POST"
				data-fv-framework="bootstrap"
				data-fv-icon-valid="glyphicon glyphicon-ok"
				data-fv-icon-invalid="glyphicon glyphicon-remove"
				data-fv-icon-validating="glyphicon glyphicon-refresh">
				<div class="form-group">
				<input type="hidden" name="professor.codUsuario"
					value="${professor.codUsuario}" />
					<input type="hidden" name="areaDeInteresse.codAreaDeInteresse"
						value="${areaDeInteresse.codAreaDeInteresse}" />
					</div>	
					<div class="form-group">
						<label 
							for="nome">Área:</label>
						<div>
							<input type="text" class="form-control input-sm" id="area"
								value="${areaDeInteresse.area}" name="areaDeInteresse.area" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="nome">Nome:</label>
						<div>
							<input type="text" class="form-control input-sm" id="nome"
								value="${areaDeInteresse.nome}" name="areaDeInteresse.nome" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="descricao">Descrição:</label>
						<div>
							<textarea class="form-control input-sm" rows="5" id="descricao"
								name="areaDeInteresse.descricao">${areaDeInteresse.descricao}</textarea>
						</div>
					</div>
					<div class="form-group">
						<div>
							<input type="submit" class="btn btn-primary input-sm" value="Salvar">

						</div>
					</div>
			</form>
