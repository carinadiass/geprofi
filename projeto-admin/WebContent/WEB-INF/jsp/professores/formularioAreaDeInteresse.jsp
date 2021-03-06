<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<% 
String codAreaDeInteresse = request.getParameter("codAreaDeInteresse");
String area = request.getParameter("area");
String nome = request.getParameter("nome");
String descricao = request.getParameter("descricao");
%>

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
			<form id="formArea" class="form-horizontal" role="form" accept-charset="UTF-8"
				action="${linkTo[AreaDeInteresseController].salva}?codUsuario=${professor.codUsuario}" method="POST"
				data-fv-framework="bootstrap"
				data-fv-icon-valid="glyphicon glyphicon-ok"
				data-fv-icon-invalid="glyphicon glyphicon-remove"
				data-fv-icon-validating="glyphicon glyphicon-refresh">
				<div class="form-group">
				<input type="hidden" name="professor.codUsuario"
					value="${professor.codUsuario}" />
					<input type="hidden" name="areaDeInteresse.codAreaDeInteresse"
						value="${param.codAreaDeInteresse}" />
					</div>	
					<div class="form-group">
						<label 
							for="nome">�rea:</label>
						<div>
							<input type="text" class="form-control input-sm" id="area"
								value="${param.area}" name="areaDeInteresse.area" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="nome">Nome:</label>
						<div>
							<input type="text" class="form-control input-sm" id="nome"
								value="${param.nome}" name="areaDeInteresse.nome" />
						</div>
					</div>
					<div class="form-group">
						<label
							for="descricao">Descri��o:</label>
						<div>
							<textarea class="form-control input-sm" rows="5" id="descricao"
								name="areaDeInteresse.descricao">${param.descricao}</textarea>
						</div>
					</div>
					<div class="form-group">
						<div>
							<input type="submit" class="btn btn-primary input-sm" value="Salvar">
						</div>
					</div>
			</form>
