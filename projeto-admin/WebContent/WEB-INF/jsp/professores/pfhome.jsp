<jsp:include page="heard.jsp">
	<jsp:param value="teste" name="1"/>
</jsp:include>
<%
	String codProfessor = request.getParameter("codUsuario");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<jsp:include page="menu.jsp">
	<jsp:param value="${param.codProfessor}" name="codUsuario"/>
</jsp:include>

<!-- INÍCIO CONTEÚDO DO PERFIL DO PROFESSOR -->

<div class="right_col" role="main">

	<div class="">
		<div class="page-title">
	
			<div class="title_left">
				<h3>Perfil de Professor</h3>
			</div>
			<div class="title_right"></div>
		</div>
		<div class="clearfix"></div>

		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							${professor.nome}<small>-- Criado em: <fmt:formatDate value="${professor.dataDeCadastro}" pattern="dd/MM/yyyy" /></small>
						</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
					
					<!-- Lado esquerdo do Perfil -->
					<div class="col-md-3 col-sm-3 col-xs-12 profile_left">
					
					
						
						<c:if test="${not empty errors}"> <!-- Inicio Validação Campo Modal de Edição -->
								<div class="alert alert-danger">
								   <button type="button" class="close" data-dismiss="alert">&times;</button>
									<c:forEach items="${errors}" var="error">
								       ${error.message}<br>
									</c:forEach>
								</div>
							</c:if>
						<c:if test="${not empty mensagem}">
							<div class="alert alert-success">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
								${mensagem}
							</div>
						</c:if> <!-- Final Validação Campo Modal de Edição -->
						
						
						
							<ul class="list-unstyled user_data">
								<li><i class="fa fa-map-marker user-profile-icon"></i> ${professor.sala}</li>
								<li><i class="fa fa-envelope-o user-profile-icon"></i> ${professor.email}</li>
								<li class="m-top-xs"><i class="fa fa-external-link user-profile-icon"></i> 
							    	<a href="${professor.paginaPessoal}" target="_blank">${professor.paginaPessoal}</a>
								</li>
							</ul>
							
						<!-- MODAL EDITAR PERFIL DO PROFESSOR -->
							<button type="button" class="btn btn-success"	data-toggle="modal" data-target=".bs-example-modal-lg">
							     Editar	Perfil
							 </button>
							
							<div class="modal fade bs-example-modal-lg" tabindex="-1"
									role="dialog" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">
													<span aria-hidden="true">X</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">Editar Perfil</h4>
											</div>
											<div class="modal-body">
												<jsp:include page="formulario.jsp">
													<jsp:param name="professor" value="${professor}" />
												</jsp:include>
											</div>
										</div>
									</div>
								</div> <!--DIV class="modal fade bs-example-modal-lg"  -->

						</div><!--DIV class="col-md-3 col-sm-3 col-xs-12 profile_left -->
					
					<!-- Lado direito do Perfil -->
					 <div class="col-md-9 col-sm-9 col-xs-12">
					 
					<jsp:include page="painelProfessor.jsp">
						<jsp:param name="projetoList" value="${projetoList}" />
						<jsp:param name="professor" value="${professor}" />
						<jsp:param name="areaDeInteresseList" value="${areaDeInteresseList}" />
					</jsp:include>

					<!-- FINAL CONTEÚDO DO PERFIL D? -->
					 </div> <!--DIV class="col-md-9 col-sm-9 col-xs-12" -->
					</div><!--DIV class="x_content" -->
				</div><!--DIV class="x_panel" -->
			</div><!--DIV class="col-md-12 col-sm-12 col-xs-12" -->
		</div><!--DIV class="row" -->
	</div><!-- DIV class="" -->
	<jsp:include page="rodape.jsp">
		<jsp:param value="teste" name="1" />
	</jsp:include>
</div><!--DIV class="right_col" role="main" -->

<div id="custom_notifications" class="custom-notifications dsp_none">
	<ul class="list-unstyled notifications clearfix"
		data-tabbed_notifications="notif-group">
	</ul>
	<div class="clearfix"></div>
	<div id="notif-group" class="tabbed_notifications"></div>
</div>
<!-- INICIO DECLA  -->
    <script src="${pageContext.request.contextPath}/production/js/bootstrap.min.js"></script>

    <!-- chart js -->
    <script src="${pageContext.request.contextPath}/production/js/chartjs/chart.min.js"></script>
    <!-- bootstrap progress js -->
    <script src="${pageContext.request.contextPath}/production/js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="${pageContext.request.contextPath}/production/js/icheck/icheck.min.js"></script>

    <script src="${pageContext.request.contextPath}/production/js/custom.js"></script>

    <!-- image cropping -->
    <script src="${pageContext.request.contextPath}/production/js/cropping/cropper.min.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/cropping/main.js"></script>

    
    <!-- daterangepicker -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/production/js/moment.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/production/js/datepicker/daterangepicker.js"></script>
    <!-- moris js -->
    <script src="${pageContext.request.contextPath}/production/js/moris/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/moris/morris.js"></script>
