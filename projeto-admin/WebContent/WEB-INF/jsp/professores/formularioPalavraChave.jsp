<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<% 
String codigo = request.getParameter("codigo");
String palavra = request.getParameter("palavra");
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

<form id="formPalavraChave" class="form-horizontal" role="form"
				action="${linkTo[PalavraChaveController].salva}?codUsuario=${professor.codUsuario}" method="POST"
				data-fv-framework="bootstrap"
				data-fv-icon-valid="glyphicon glyphicon-ok"
				data-fv-icon-invalid="glyphicon glyphicon-remove"
				data-fv-icon-validating="glyphicon glyphicon-refresh">
				
				<div class="form-group">
					<input type="hidden" name="palavrachave.codPalavraChave"
						value="${param.codigo}" />
						  <input type="hidden"
						name="palavrachave.codProfessor" value="${professor.codUsuario}" />
				</div>
					<div class="form-group">
						<label
							for="nome">Palavra:</label>
						<div >
							<input type="text"  class="form-control input-sm" id="palavra" value="${param.palavra}"
								name="palavrachave.palavra" />
						</div>
					</div>
					<div class="form-group">
						<div >
							<input type="submit" class="btn btn-primary input-sm">
						</div>
					</div>
			</form>