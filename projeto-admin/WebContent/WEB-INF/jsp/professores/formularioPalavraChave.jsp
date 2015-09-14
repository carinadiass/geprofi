<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<% 
String codigoPalavraChave = request.getParameter("codigo");
String palavraCh = request.getParameter("palavra");
%>

<form id="formPalavraChave" class="form-horizontal" role="form"
				action="${linkTo[PalavraChaveController].salva}" method="POST"
				data-fv-framework="bootstrap"
				data-fv-icon-valid="glyphicon glyphicon-ok"
				data-fv-icon-invalid="glyphicon glyphicon-remove"
				data-fv-icon-validating="glyphicon glyphicon-refresh">
				
				<div class="form-group">
					<input type="hidden" name="palavrachave.codPalavraChave"
						value="${param.codigoPalavraChave}" />
						  <input type="hidden"
						name="palavrachave.codProfessor" value="${professor.codUsuario}" />
				</div>
					<div class="form-group">
						<label
							for="nome">Palavra: ${param.palavraCh} ${param.codigoPalavraChave}</label>
						<div >
							<input type="text"  class="form-control input-sm" id="palavra" value="${param.palavraCh}"
								name="palavrachave.palavra" />
						</div>
					</div>
					<div class="form-group">
						<div >
							<input type="submit" class="btn btn-primary input-sm">
						</div>
					</div>
			</form>