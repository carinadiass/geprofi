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
                          <c:set var="etapa" scope="session" value="${projeto.codtipoetapa}"/>
                          <c:if test="${etapa == 1}">
                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="14"></div>
                                           </div>
                                                 <small>14% Completo</small>
                          </c:if>
                          <c:if test="${etapa == 2}">
                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="28"></div>
                                           </div>
                                                 <small>28% Completo</small>
                          </c:if>
                          <c:if test="${etapa == 3}">
                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="42"></div>
                                           </div>
                                                 <small>42% Completo</small>
                          </c:if>
                          <c:if test="${etapa == 4}">
                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="56"></div>
                                           </div>
                                                 <small>56% Completo</small>
                          </c:if>
                          <c:if test="${etapa == 5}">
                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="70"></div>
                                           </div>
                                                 <small>70% Completo</small>
                          </c:if>
                          <c:if test="${etapa == 6}">
                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="84"></div>
                                           </div>
                                                 <small>84% Completo</small>
                          </c:if>
                          <c:if test="${etapa == 7}">
                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="100"></div>
                                           </div>
                                                 <small>100% Completo</small>
                          </c:if>
                           <c:if test="${etapa == 0}">
                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="0"></div>
                                           </div>
                                                 <small>0% Completo</small>
                          </c:if>
                 </td>
				<td>
					<button type="button" class="btn btn-success btn-xs">
							<c:set var="etapa" scope="session" value="${projeto.codtipoetapa}"/>
							<c:if test="${etapa == 1}">
  							<c:out value="Cadastro de Monografia"/>	
									</c:if>
									<c:if test="${etapa == 2}">
  								<c:out value="Cadastro de Alunos"/>	
									</c:if>
										<c:if test="${etapa == 3}">
										
  								<c:out value="Desenvolvimento do Projeto"/>	
									</c:if>
							    <c:if test="${etapa == 4}">
  								<c:out value="Valida Monografia"/>	
									</c:if>
									<c:if test="${etapa ==5}">
  								<c:out value="Convidar Banca"/>	
									</c:if>
										<c:if test="${etapa ==6}">
  								<c:out value="Marcar Apresentação"/>	
									</c:if>
										<c:if test="${etapa ==7}">
  								<c:out value="Finalizar Projeto"/>	
									</c:if>
					</button>
				</td>
				
				<td><a href="${linkTo[ProjetosController].fluxogeprofi}?codProjeto=${projeto.codProjeto}" class="btn btn-primary btn-xs"><i
						class="fa fa-folder"></i> Visualizar </a> 
					<a
					href="${linkTo[ProjetosController].delete}?codProjeto=${projeto.codProjeto}&codUsuario=${professor.codUsuario}"
					 onclick="return confirmExclusao()" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
						Excluir </a></td>
			</tr>
	</c:forEach>
	</tbody>
</table>


<!-- end user projects -->
<script>
	function confirmExclusao() {
		if (confirm("Tem certeza que deseja excluir?")) {
			return true;
		} else {
			return false;
		}
	}
</script>
