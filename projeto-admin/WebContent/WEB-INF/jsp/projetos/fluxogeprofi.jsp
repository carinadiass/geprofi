<jsp:include page="../professores/heard.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>
<%
	String codProfessor = request.getParameter("codUsuario");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<jsp:include page="../professores/menu.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>

<div class="right_col" role="main">

	<div class="">
		<div class="page-title">
			<!--      <div class="title_left">
                        </div>
                        <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                </div>
                            </div>-->
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
		<!-- Lado Esquerdo do Projeto -->
			<div class="col-md-3 col-sm-3 col-xs-12 profile_left">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							Etapas do Projeto Final
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false"><i
									class="fa fa-wrench"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Settings 1</a></li>
									<li><a href="#">Settings 2</a></li>
								</ul></li>
							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<ul class="list-unstyled timeline">
							<li>
								<div class="block">
									<!--	<div class="tags">-->
									<!-- <a href="" class="tag"> -->
										<!--	</a>-->
									<!--		</div>-->
									<div class="block_content">
										<h2 class="title">  <span><i class="fa fa-folder"></i></span><a>	Criar Projeto Final</a>
										</h2>
										<div class="byline">
											<!--	<span>13 hours ago</span> by <a>Jane Smith</a>-->		
										</div>
										<p class="excerpt">
										</p>
									</div>
								</div>
							</li>
							<li>
								<div class="block">
								<!--		<div class="tags">
										<a href="" class="tag"> <span>Entertainment</span>
										</a>
									</div>-->
									<div class="block_content">
										<h2 class="title">
											<span><i class="fa fa-user"></i></span><a>  Cadastro de Alunos</a>
										</h2>
										<div class="byline">
									<!-- <span>13 hours ago</span> by <a>Jane Smith</a> -->		
										</div>
										<p class="excerpt">
										</p>
									</div>
								</div>
							</li>
							<li>
								<div class="block">
									<!--	<div class="tags">
										<a href="" class="tag"> <span>Entertainment</span>
										</a>
									</div>-->
									<div class="block_content">
										<h2 class="title">
											 <span ><i class="fa fa-folder-open-o"></i></span><a>  Desenvolvimento do Projetos</a>
										</h2>
										<div class="byline">
									<!--		<span>13 hours ago</span> by <a>Jane Smith</a> -->	
										</div>
										<p class="excerpt">
										</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!-- Lado direito do Projeto -->
			<div class="col-md-9 col-sm-9 col-xs-12">
			
				 <form class="form-horizontal">

                                                <span class="section">Criar Projeto</span>

                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3" for="first-name">First Name <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6">
                                                        <input type="text" id="first-name2" required="required" class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3" for="last-name">Last Name <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6">
                                                        <input type="text" id="last-name2" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="middle-name" class="control-label col-md-3 col-sm-3">Middle Name / Initial</label>
                                                    <div class="col-md-6 col-sm-6">
                                                        <input id="middle-name2" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3">Gender</label>
                                                    <div class="col-md-6 col-sm-6">
                                                        <div id="gender2" class="btn-group" data-toggle="buttons">
                                                            <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                                <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                                                            </label>
                                                            <label class="btn btn-primary active" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                                <input type="radio" name="gender" value="female" checked=""> Female
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3">Date Of Birth <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6">
                                                        <input id="birthday2" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                                    </div>
                                                </div>

                                            </form>
			
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