<jsp:include page="../professores/heard.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>
<%
	String codProjeto = request.getParameter("codProjeto");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<jsp:include page="../professores/menu.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>

<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
		</div>
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
											<span><i class="fa fa-folder"></i></span><a> Cadastro de Projeto Final</a>
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
											<span><i class="fa fa-user"></i></span><a> Cadastro de Alunos</a>
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
											<span><i class="fa fa-folder-open"></i></span><a> Desenvolvimento do Projeto</a>
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
											<span><i class="fa fa-folder-open"></i></span><a>Validação de Monografia</a>
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
                                    <h2>Validação de Monografia</h2>
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
						<h3 class="green">
							<i class="fa fa-paint-brush"></i> Faça o upload da sua monografia
						</h3>

						<p>${projeto.descricao}</p>
						<form action="${linkTo[ProjetosController].uploadArquivo}?codProjeto=${projeto.codProjeto}" method="post" enctype="multipart/form-data">
							
							<!--   <input type="hidden" name="projeto.codProjeto" 	value="${projeto.codProjeto}" />
									<input id="uploadFile" placeholder="Choose File" disabled="disabled" />
									<div class="fileUpload btn btn-success">
										<span>Upload Consulta</span> 
										<input id="uploadBtn" type="file" class="upload"  name="files[]" multiple/>
									</div>-->
									<br>
								<!-- 	<h5>Faça o upload da monografia</h5> -->
								<input type="hidden" name="projeto.codProjeto"
								value="${projeto.codProjeto}" /> 
									<input id="uploadFile" placeholder="Choose File" disabled="disabled" />
									<div class="fileUpload btn btn-success">
										<span>Upload Monografia</span> <input id="uploadBtn"
											type="file" class="upload" />
									</div>
									<br>
									<input type="submit" class="btn btn-primary" value="Enviar">
						</form>
					</div> <!-- Content  -->
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

    <script type="text/javascript">
    document.getElementById("uploadBtn").onchange = function () {
        document.getElementById("uploadFile").value = this.value;
    };
    </script>

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
	
	    <!-- dropzone -->
    <script src="${pageContext.request.contextPath}/production/js/dropzone/dropzone.js"></script>