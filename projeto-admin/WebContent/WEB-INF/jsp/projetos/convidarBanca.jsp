<jsp:include page="../professores/heard.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>
<%
	String codProjeto = request.getParameter("codProjeto");
  String codUsuario = request.getParameter("codProjeto");
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
							<li>
								<div class="block">
									<div class="block_content">
										<h2 class="title">
											<span><i class="fa fa-folder-open"></i></span><a>
												Desenvolvimento do Projeto</a>
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
											<span><i class="fa fa-file-o"></i></span>  <a> Validação de Monografia</a>
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
											<span><i class="fa fa-users"></i></span> <a>	Convidar Banca</a>
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
						<h2>Convidar Banca</h2>
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
					
						<form class="form-horizontal form-label-left"
							action="${linkTo[BancaController].salva}?codProjeto=${param.codProjeto}&codUsuario=${param.codUsuario}"
							method="post">
						
							
							<input type="hidden" name="projeto.codProjeto"
								value="${projeto.codProjeto}" />
								<input type="hidden" name="banca.codBanca"
									value="${banca.codBanca}" /> <input type="hidden"
									name="banca.codProjeto" value="${param.codProjeto}" />
						
									
						<!--	<div class="form-group">
								  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="banca.quantidadeDeParticipantes"> Quantidade de Participante</label>
								<div class="col-md-9 col-sm-9 col-xs-12">
									<select id="banca.quantidadeDeParticipantes" name="banca.quantidadeDeParticipantes" value="${banca.quantidadeDeParticipantes}" 	class="form-control input-sm">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select>
								</div>
							</div>   -->
							<div class="form-group">
						
								<label class="control-label col-md-3 col-sm-3 col-xs-12">Professores  </label>
								
								<div class="col-md-9 col-sm-9 col-xs-12">
								  <select class="select2_multiple form-control" value="${banca.convite} id="projeto.palavraChave" name="banca.convite" multiple="multiple">
										<c:forEach var="professorExterno" items="${ListProfessoresExterno}">
											<option value="${professorExterno.email}">${professorExterno.nome} - ${professorExterno.universidadeOrigem}</option>
										</c:forEach>
										<c:forEach var="professor" items="${ListProfessores}">
											<option value="${professor.email}">${professor.nome}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							
							<p>Período pra apresentação</p>
							<hr>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-3">De</label>
                                            <div class="col-md-9 col-sm-9 col-xs-9">
                                                <input type="text" class="form-control" value="${banca.dataInicio}" name="banca.dataInicio" data-inputmask="'mask': '99/99/9999'">
                                                <span class="fa fa-desktop form-control-feedback right" aria-hidden="true"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-3">Até</label>
                                            <div class="col-md-9 col-sm-9 col-xs-9">
                                                <input type="text"	class="form-control" value="${banca.datafim}" name="banca.datafim" data-inputmask="'mask': '99/99/9999'">
                                                <span class="fa fa-desktop form-control-feedback right" aria-hidden="true"></span>
                                            </div>
                                        </div>
							
							 <div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
						    <button type="submit" class="btn btn-primary">Cancel</button>
							<button type="submit" class="btn btn-success">Enviar Convite</button>
							<button type="submit" class="btn btn-warning">Marcar Apresentação</button>
						</div>
					</div>
						</form>
					</div>
					<!-- Content  -->
				</div>
				
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
	
	    <!-- dropzone -->
    <script src="${pageContext.request.contextPath}/production/js/dropzone/dropzone.js"></script>
   <!-- daterangepicker -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/production/js/moment.min2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/production/js/datepicker/daterangepicker.js"></script>
    <!-- input mask -->
    <script src="${pageContext.request.contextPath}/production/js/input_mask/jquery.inputmask.js"></script>
    <!-- knob -->
    <script src="${pageContext.request.contextPath}/production/js/knob/jquery.knob.min.js"></script>
    <!-- range slider -->
    <script src="${pageContext.request.contextPath}/production/js/ion_range/ion.rangeSlider.min.js"></script>
    <!-- color picker -->
    <script src="${pageContext.request.contextPath}/production/js/colorpicker/bootstrap-colorpicker.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/colorpicker/docs.js"></script>

    <!-- image cropping -->
    <script src="${pageContext.request.contextPath}/production/js/cropping/cropper.min.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/cropping/main2.js"></script>  
    
    
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
                    maximumSelectionLength: 3,
                    placeholder: "Escolha até 3 professores",
                    allowClear: true
                });
            });
        </script>
        
        <!-- /select2 -->
  <!-- input_mask -->
    <script>
        $(document).ready(function () {
            $(":input").inputmask();
        });
    </script>
    <!-- /input mask -->       
     