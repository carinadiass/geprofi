<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- page content -->
<%
	String codProfessor = request.getParameter("codUsuario");
%>
<jsp:include page="heard.jsp">
	<jsp:param value="teste" name="1"/>
</jsp:include>
<jsp:include page="menu.jsp">
	<jsp:param value="teste" name="1"/>
</jsp:include>
	<!-- INICIO DO MENU DINAMICO  -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		<!--FINAL DO  MENU DINAMICO  -->
	<div class="right_col" role="main">
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h3>${professor.nome}</h3>
						</div>
						<div class="x_content">
							<div class="col-md-3 col-sm-3 col-xs-12 profile_left">
								<div class="profile_img">
									<!-- end of image cropping -->
									<div id="crop-avatar">
										<!-- Current avatar -->
										<div class="avatar-view" title="Change the avatar">
											<img
												src="${pageContext.request.contextPath}/production/
										images/picture.jpg"
												alt="Avatar">
										</div>
										<!-- Cropping modal -->
										<div class="modal fade" id="avatar-modal" aria-hidden="true"
											aria-labelledby="avatar-modal-label" role="dialog"
											tabindex="-1">
											<div class="modal-dialog modal-lg">
												<div class="modal-content">
													<form class="avatar-form" action="crop.php"
														enctype="multipart/form-data" method="post">
														<div class="modal-header">
															<button class="close" data-dismiss="modal" type="button">&times;</button>
															<h4 class="modal-title" id="avatar-modal-label">Change
																Avatar</h4>
														</div>
														<div class="modal-body">
															<div class="avatar-body">

																<!-- Upload image and data -->
																<div class="avatar-upload">
																	<input class="avatar-src" name="avatar_src"
																		type="hidden"> <input class="avatar-data"
																		name="avatar_data" type="hidden"> <label
																		for="avatarInput">Local upload</label> <input
																		class="avatar-input" id="avatarInput"
																		name="avatar_file" type="file">
																</div>

																<!-- Crop and preview -->
																<div class="row">
																	<div class="col-md-9">
																		<div class="avatar-wrapper"></div>
																	</div>
																	<div class="col-md-3">
																		<div class="avatar-preview preview-lg"></div>
																		<div class="avatar-preview preview-md"></div>
																		<div class="avatar-preview preview-sm"></div>
																	</div>
																</div>

																<div class="row avatar-btns">
																	<div class="col-md-9">
																		<div class="btn-group">
																			<button class="btn btn-primary" data-method="rotate"
																				data-option="-90" type="button"
																				title="Rotate -90 degrees">Rotate Left</button>
																			<button class="btn btn-primary" data-method="rotate"
																				data-option="-15" type="button">-15deg</button>
																			<button class="btn btn-primary" data-method="rotate"
																				data-option="-30" type="button">-30deg</button>
																			<button class="btn btn-primary" data-method="rotate"
																				data-option="-45" type="button">-45deg</button>
																		</div>
																		<div class="btn-group">
																			<button class="btn btn-primary" data-method="rotate"
																				data-option="90" type="button"
																				title="Rotate 90 degrees">Rotate Right</button>
																			<button class="btn btn-primary" data-method="rotate"
																				data-option="15" type="button">15deg</button>
																			<button class="btn btn-primary" data-method="rotate"
																				data-option="30" type="button">30deg</button>
																			<button class="btn btn-primary" data-method="rotate"
																				data-option="45" type="button">45deg</button>
																		</div>
																	</div>
																	<div class="col-md-3">
																		<button class="btn btn-primary btn-block avatar-save"
																			type="submit">Done</button>
																	</div>
																</div>
															</div>
														</div>
														<!-- <div class="modal-footer">
                                                  <button class="btn btn-default" data-dismiss="modal" type="button">Close</button>
                                                </div> -->
													</form>
												</div>
											</div>
										</div>
										<!-- /.modal -->

										<!-- Loading state -->
										<div class="loading" aria-label="Loading" role="img"
											tabindex="-1"></div>
									</div>
									<!-- end of image cropping -->

								</div>

								<ul class="list-unstyled user_data">
									<li><i class="fa fa-envelope-o user-profile-icon"> </i> <a>
											${professor.email}</a></li>
									<li><i class="fa fa-map-marker user-profile-icon"> </i>
										${professor.sala}</li>

									<li class="m-top-xs"><i
										class="fa fa-external-link user-profile-icon"></i> <a
										href="${professor.paginaPessoal}" target="_blank">${professor.paginaPessoal}</a>
									</li>
								</ul>
								<!--<a class="btn btn-success" href="${linkTo[ProfessoresController].edita}?codUsuario=${param.codProfessor}"><i class="fa fa-edit m-right-xs"></i>Edit
								Profile</a> <br /> -->
								<!-- modals -->
								<!-- Large modal -->
								<button type="button" class="btn btn-round btn-success"
									data-toggle="modal" data-target=".bs-example-modal-lg">Editar
									Perfil</button>
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
												<jsp:include page="formulario_alterado.jsp">
													<jsp:param name="professor" value="${professor}" />
												</jsp:include>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-9 col-sm-9 col-xs-12">
								<div class="" role="tabpanel" data-example-id="togglable-tabs">
									<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
										<li role="presentation" class="active"><a
											href="#tab_content1" id="home-tab" role="tab"
											data-toggle="tab" aria-expanded="true">Áreas de Interesse</a></li>
										<li role="presentation" class=""><a href="#tab_content2"
											role="tab" id="profile-tab" data-toggle="tab"
											aria-expanded="false">Palavras Chave</a></li>
										<li role="presentation" class=""><a href="#tab_content3"
											role="tab" id="profile-tab2" data-toggle="tab"
											aria-expanded="false">Pojetos Orientados</a></li>
										<li role="presentation" class="active"><a
											href="#tab_content1" id="home-tab" role="tab"
											data-toggle="tab" aria-expanded="true">Participação de
												Banca</a></li>
										<li role="presentation" class=""><a href="#tab_content2"
											role="tab" id="profile-tab" data-toggle="tab"
											aria-expanded="false">Professores Externos</a></li>
										<li role="presentation" class=""><a href="#tab_content3"
											role="tab" id="profile-tab2" data-toggle="tab"
											aria-expanded="false">Apresentações de Projetos</a></li>
									</ul>
									<div id="myTabContent" class="tab-content">
										<div role="tabpanel" class="tab-pane fade active in"
											id="tab_content1" aria-labelledby="profile-tab"
											aria-labelledby="home-tab"></div>
										<div role="tabpanel" class="tab-pane fade" id="tab_content2">
											<!-- start recent activity -->
											<ul class="messages">
												<li><img src="images/img.jpg" class="avatar"
													alt="Avatar">
													<div class="message_date">
														<h3 class="date text-info">24</h3>
														<p class="month">May</p>
													</div>
													<div class="message_wrapper">
														<h4 class="heading">Desmond Davison</h4>
														<blockquote class="message">Raw denim you
															probably haven't heard of them jean shorts Austin.
															Nesciunt tofu stumptown aliqua butcher retro keffiyeh
															dreamcatcher synth.</blockquote>
														<br />
														<p class="url">
															<span class="fs1 text-info" aria-hidden="true"
																data-icon=""></span> <a href="#"><i
																class="fa fa-paperclip"></i> User Acceptance Test.doc </a>
														</p>
													</div></li>
												<li><img src="images/img.jpg" class="avatar"
													alt="Avatar">
													<div class="message_date">
														<h3 class="date text-error">21</h3>
														<p class="month">May</p>
													</div>
													<div class="message_wrapper">
														<h4 class="heading">Brian Michaels</h4>
														<blockquote class="message">Raw denim you
															probably haven't heard of them jean shorts Austin.
															Nesciunt tofu stumptown aliqua butcher retro keffiyeh
															dreamcatcher synth.</blockquote>
														<br />
														<p class="url">
															<span class="fs1" aria-hidden="true" data-icon=""></span>
															<a href="#" data-original-title="">Download</a>
														</p>
													</div></li>
												<li><img src="images/img.jpg" class="avatar"
													alt="Avatar">
													<div class="message_date">
														<h3 class="date text-info">24</h3>
														<p class="month">May</p>
													</div>
													<div class="message_wrapper">
														<h4 class="heading">Desmond Davison</h4>
														<blockquote class="message">Raw denim you
															probably haven't heard of them jean shorts Austin.
															Nesciunt tofu stumptown aliqua butcher retro keffiyeh
															dreamcatcher synth.</blockquote>
														<br />
														<p class="url">
															<span class="fs1 text-info" aria-hidden="true"
																data-icon=""></span> <a href="#"><i
																class="fa fa-paperclip"></i> User Acceptance Test.doc </a>
														</p>
													</div></li>
												<li><img src="images/img.jpg" class="avatar"
													alt="Avatar">
													<div class="message_date">
														<h3 class="date text-error">21</h3>
														<p class="month">May</p>
													</div>
													<div class="message_wrapper">
														<h4 class="heading">Brian Michaels</h4>
														<blockquote class="message">Raw denim you
															probably haven't heard of them jean shorts Austin.
															Nesciunt tofu stumptown aliqua butcher retro keffiyeh
															dreamcatcher synth.</blockquote>
														<br />
														<p class="url">
															<span class="fs1" aria-hidden="true" data-icon=""></span>
															<a href="#" data-original-title="">Download</a>
														</p>
													</div></li>

											</ul>
											<!-- end recent activity -->
										</div>
										<div role="tabpanel" class="tab-pane fade" id="tab_content3"
											aria-labelledby="profile-tab">

											<!-- start user projects -->
											<table class="data table table-striped no-margin">
												<thead>
													<tr>
														<th>ID</th>
														<th>Nome</th>
														<th>Tema</th>
														<th>Progresso</th>
														<th>Etapa</th>
														<th>Ações</th>
													</tr>
												</thead>
												<c:forEach var="projeto" items="${projetoList}"
													varStatus="id">
													<tbody>
														<tr>
															<td>${projeto.codProjeto}</td>
															<td><a>${projeto.nome}</a> <br /> <small>Criado
																	em <fmt:formatDate value="${projeto.dataCadastro}"
																		pattern="dd/MM/yyyy" />
															</small></td>
															<td>${projeto.tema}</td>
															<td class="project_progress">
																<div class="progress progress_sm">
																	<div class="progress-bar bg-green" role="progressbar"
																		data-transitiongoal="77"></div>
																</div> <small>77% Complete</small>
															</td>
															<td>
																<button type="button" class="btn btn-success btn-xs">Success</button>
															</td>
															<td><a href="#" class="btn btn-primary btn-xs"><i
																	class="fa fa-folder"></i> View </a> <a
																href="${linkTo[ProjetosController].edita}?codProjeto=${projeto.codProjeto}"
																class="btn btn-info btn-xs"><i class="fa fa-pencil"></i>
																	Edit </a> <a
																href="${linkTo[ProjetosController].delete}?codProjeto=${projeto.codProjeto}"
																class="btn btn-danger btn-xs"><i
																	class="fa fa-trash-o"></i> Delete </a></td>
														</tr>
												</c:forEach>
												</tbody>
											</table>
											<!-- end user projects -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- /page content -->
<div id="custom_notifications" class="custom-notifications dsp_none">
	<ul class="list-unstyled notifications clearfix"
		data-tabbed_notifications="notif-group">
	</ul>
	<div class="clearfix"></div>
	<div id="notif-group" class="tabbed_notifications"></div>
</div>
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

<!-- image cropping -->
<script
	src="${pageContext.request.contextPath}/production/js/cropping/cropper.min.js"></script>
<script
	src="${pageContext.request.contextPath}/production/js/cropping/main.js"></script>


<!-- daterangepicker -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/production/js/moment.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/production/js/datepicker/daterangepicker.js"></script>
<!-- moris js -->
<script
	src="${pageContext.request.contextPath}/production/js/moris/raphael-min.js"></script>
<script
	src="${pageContext.request.contextPath}/production/js/moris/morris.js"></script>
</body>
