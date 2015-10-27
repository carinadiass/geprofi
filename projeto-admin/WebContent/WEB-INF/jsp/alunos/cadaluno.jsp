<jsp:include page="../professores/heard.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>

<%
/*String codProjeto = request.getParameter("codProjeto");
System.out.println("Parametro Cod_Projeto:" +codProjeto); */
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<jsp:include page="../professores/menu.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>

<div class="right_col" role="main">
	<div class="">
		<div class="page-title"></div>
	</div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<!-- Lado Esquerdo do Projeto -->
			<div class="col-md-3 col-sm-3 col-xs-12 profile_left">
				<div class="x_panel">
					<div class="x_title">
						<h2>Etapas do Projeto Final</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<ul class="list-unstyled timeline">
							<li>
								<div class="block">
									<div class="block_content">
										<h2 class="title">
											<span><i class="fa fa-folder"></i></span><a> Cadastro
												Projeto Final</a>
										</h2>
										<div class="byline">
											<!--	<span>13 hours ago</span> by <a>Jane Smith</a>-->
										</div>
										<p class="excerpt"></p>
									</div>
								</div>
							</li>
							<li>
								<div class="block">
									<div class="block_content">
										<h2 class="title">
											<span><i class="fa fa-user"></i></span><a> Cadastro de
												Alunos</a>
										</h2>
										<div class="byline">
											<!--	<span>13 hours ago</span> by <a>Jane Smith</a>-->
										</div>
										<p class="excerpt"></p>
									</div>
								</div>
							</li>

						</ul>
					</div>
				</div>
			</div>
			<!-- Lado direito do Projeto -->
			<div class="col-md-9 col-sm-9 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Cadastro de Alunos</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">

						<ul class="errors">
							<c:if test="${not empty errors}">
								<c:forEach items="${errors}" var="error">
									<div class="alert alert-danger" role="alert">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<h6>
											<i class="glyphicon glyphicon-exclamation-sign"> </i>
											${error.message}
										</h6>
									</div>
								</c:forEach>
							</c:if>
						</ul>
						<form class="form-horizontal" id="formAluno" role="form"
							action="${linkTo[AlunosController].salva}" method="POST"
							data-fv-framework="bootstrap"
							data-fv-icon-valid="glyphicon glyphicon-ok"
							data-fv-icon-invalid="glyphicon glyphicon-remove"
							data-fv-icon-validating="glyphicon glyphicon-refresh">
							<input type="hidden" name="aluno.codProjeto"
								value="${codProjeto}" /> <input type="hidden"
								name="param.codUsuario" value="${aluno.codUsuario}" />
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3" for="aluno.nome">Nome:</label>
								<div class="col-md-6 col-sm-6">
									<input id="aluno.nome" name="aluno.nome" value="${aluno.nome}"
										class="form-control input-sm" type="text">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3" for="aluno.email">E-mail:</label>
								<div class="col-md-6 col-sm-6">
									<input id="aluno.email" name="aluno.email" placeholder="E-mail"
										value="${aluno.email}" class="form-control input-sm"
										type="text">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3" for="aluno.dre">Dre:</label>
								<div class="col-md-6 col-sm-6">
									<input id="aluno.dre" name="aluno.dre" value="${aluno.dre}"
										class="form-control input-sm" type="text">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3" for="aluno.dre">Curso:</label>
								<div class="col-md-6 col-sm-6">
									<input id="aluno.curso" name="aluno.curso"
										value="${aluno.curso}" class="form-control input-sm"
										type="text">
								</div>
							</div>
							<!-- Select Basic -->
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3" for="aluno.sexo">Sexo:</label>
								<div class="col-md-6 col-sm-6">
									<select id="aluno.sexo" name="aluno.sexo"
										class="form-control input-sm" placeholder="Sexo"
										value="${aluno.sexo}">
										<option value="Masculino">Masculino</option>
										<option value="Feminino">Feminino</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="control-label col-md-3 col-sm-3">
									<input type="submit" class="btn btn-success" value="Salvar">
								
								</div>
							</div>
						</form>
					</div> <!-- Content Fim  -->
					
				</div> <!-- Painel FIM -->
				<c:if test="${not empty alunoList}">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Alunos Cadastrados</h2>
                                   
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                                                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                
							<c:if test="${not empty mensagem}">
								<div class="alert alert-success">
									<button type="button" class="close" data-dismiss="alert">&times;</button>
									${mensagem}
								</div>
							</c:if>
							 <br>
                                    	<a class="btn btn-primary"
										href="${linkTo[ProjetosController].visualiza}?codProjeto=${codProjeto}"
										title="Iniciar Projeto"> <i class="fa fa-folder-open-o"></i>
									 Devolver Projeto
									</a>
							<table class="table table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Nome</th>
										<th>Email</th>
										<th>Dre</th>
										<th>Curso</th>
										<th>Data de Cadastro</th>
										<th colspan=2>Ação</th>
									</tr>
								</thead>
								<c:forEach var="aluno" items="${alunoList}" varStatus="id">
									<tbody>
										<tr>
											<td>${aluno.codUsuario}</td>
											<td>${aluno.nome}</td>
											<td>${aluno.email}</td>
											<td>${aluno.dre}</td>
											<td>${aluno.curso}</td>
											<td><fmt:formatDate value="${aluno.dataDeCadastro}"
													pattern="dd/MM/yyyy" /></td>
											<td><a class="btn  btn-info btn-sm"
												href="${linkTo[AlunosController].edita}?codUsuario=${aluno.codUsuario}"
												title="Editar Aluno"> <i
													class="glyphicon glyphicon-edit"> </i>
											</a></td>
											<td><a class="btn btn-danger btn-sm"
												href="${linkTo[AlunosController].delete}?codUsuario=${aluno.codUsuario}"
												title="Excluir Aluno"> <i
													class="glyphicon glyphicon-remove"> </i>
											</a></td>
										</tr>
								</c:forEach>
								</tbody>
							</table>

						</div>
                            </div>
                 </c:if>
				<!-- 			
			Inserir Lista de Alunos Cadastrados no Projeto

 -->
			</div>

		</div>
	</div>
</div>
<div id="custom_notifications" class="custom-notifications dsp_none">
	<ul class="list-unstyled notifications clearfix"
		data-tabbed_notifications="notif-group">
	</ul>
	<div class="clearfix"></div>
	<div id="notif-group" class="tabbed_notifications"></div>
</div>

<script
	src="${pageContext.request.contextPath}/production/js/bootstrap.min.js"></script>

<!-- chart js -->
<script
	src="${pageContext.request.contextPath}/production/js/chartjs/chart.min.js"></script>
<!-- bootstrap progress js -->
<script
	src="${pageContext.request.contextPath}/production/js/progressbar/bootstrap-progressbar.min.js"></script>
<script
	src="${pageContext.request.contextPath}/production/js/nicescroll/jquery.nicescroll.min.js"></script>
<!-- icheck -->
<script
	src="${pageContext.request.contextPath}/production/js/icheck/icheck.min.js"></script>

<script src="${pageContext.request.contextPath}/production/js/custom.js"></script>

<!-- PNotify -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/production/js/notify/pnotify.core.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/production/js/notify/pnotify.buttons.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/production/js/notify/pnotify.nonblock.js"></script>