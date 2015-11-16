<jsp:include page="../professores/heard.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>
<%
	String codUsuario = request.getParameter("codUsuario");
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
											<span><i class="fa fa-folder"></i></span><a> Cadastro de
												Projeto Final</a>
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
						<h2>Cadastro de Projeto Final</h2>
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
						<form id="formAluno" class="form-horizontal"
							<c:if test="${not empty param.codUsuario}">
				action="${linkTo[ProjetosController].salva}?codUsuario=${param.codUsuario}"
			 </c:if>
							<c:if test="${empty param.codUsuario}">
				action="${linkTo[ProjetosController].salva}?codUsuario=0"
			 </c:if>
							role="form" method="POST" data-fv-framework="bootstrap"
							enctype="multipart/form-data"
							data-fv-icon-valid="glyphicon glyphicon-ok"
							data-fv-icon-invalid="glyphicon glyphicon-remove"
							data-fv-icon-validating="glyphicon glyphicon-refresh">

							<div class="form-group">
								<input type="hidden" name="projeto.codProjeto"
									value="${projeto.codProjeto}" /> <input type="hidden"
									name="param.codUsuario" value="${param.codUsuario}" /> <label
									class="control-label col-md-3 col-sm-3" for="projeto.nome">Nome</label>
								<div class="col-md-6 col-sm-6">
									<input id="projeto.nome" name="projeto.nome" placeholder=""
										value="${projeto.nome}" class="form-control input-sm"
										type="text">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3"
									for="projeto.tema">Tema</label>
								<div class="col-md-6 col-sm-6">
									<input id="projeto.tema" name="projeto.tema"
										value="${projeto.tema}" class="form-control input-sm"
										type="text">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3"
									for="projeto.titulo">Título</label>
								<div class="col-md-6 col-sm-6">
									<input id="projeto.titulo" name="projeto.titulo"
										value="${projeto.titulo}" class="form-control input-sm"
										type="text">
								</div>
							</div>
							<!-- Textarea -->
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3"
									for="projeto.descricao">Descrição</label>
								<div class="col-md-6 col-sm-6">
									<textarea class="form-control" id="projeto.descricao"
										name="projeto.descricao">${projeto.descricao}</textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3" for="aluno.sexo">Quantidade
									De Alunos</label>
								<div class="col-md-6 col-sm-6">
									<select id="aluno.sexo" name="projeto.quantidadeDeAlunos" value="${projeto.quantidadeDeAlunos}"
										class="form-control input-sm">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select>
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3"
									for="projeto.nota">Nota</label>
								<div class="col-md-6 col-sm-6">
									<input id="projeto.nota" name="projeto.nota" placeholder=""
										value="${projeto.nota}" class="form-control input-sm"
										type="text">
								</div>
							</div>
							<!-- Text input-->
							<!-- 	<select name="classe.nomeDaPropriedade">
								<c:forEach var="palavra" items="${ListpalavrasChave}">-->

							<!--	<c:if test="${algo.nomeDaPropriedade eq valor}">   selected="selected"  
                					</c:if>>${algo.descricao}</option>  -->
							<!--	</c:forEach>
							</select> -->

							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Palavras Chave </label>
								<div class="col-md-9 col-sm-9 col-xs-12">
								  <select class="select2_multiple form-control" value="${projeto.palavraChave} id="projeto.palavraChave" name="projeto.palavraChave" multiple="multiple">
										<c:forEach var="palavra" items="${ListpalavrasChave}">
											<option value="${palavra.palavra}">${palavra.palavra}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!-- 			<div class="form-group">
						<label class="control-label col-md-3 col-sm-3"
							for="projeto.palavraChave">Palavras Chave</label>
						<div class="col-md-6 col-sm-6">
							<input id="projeto.palavraChave" name="projeto.palavraChave"
								placeholder="" value="${projeto.palavraChave}"
								class="form-control input-sm" type="text">
						</div>
					</div>-->



							<!--  	<div class="form-group">
						<label class="control-label col-md-3 col-sm-3" for="arquivo">Arquivo</label>
						<div class="col-md-6 col-sm-6">
							<input type="file" name="arquivo" />
						</div>
					</div>-->

							<div class="form-group">
								<div class="control-label col-md-3 col-sm-3">
									<input type="submit" class="btn btn-success" value="Salvar">
								</div>
							</div>
						</form>
					</div>
					<!-- Content  -->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../professores/rodape.jsp">
		<jsp:param value="teste" name="1" />
	</jsp:include>
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
	
<!-- select2 -->
<script 
	src="${pageContext.request.contextPath}/production/js/select/select2.full.js"></script>
	
    <!-- select2 -->
        <script>
            $(document).ready(function () {
                $(".select2_single").select2({
                    placeholder: "Select a state",
                    allowClear: true
                });
                $(".select2_group").select2({});
                $(".select2_multiple").select2({
                    maximumSelectionLength: 4,
                    placeholder: "With Max Selection limit 4",
                    allowClear: true
                });
            });
        </script>
        
        <!-- /select2 -->