<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
			<div class="" role="tabpanel" data-example-id="togglable-tabs">
									<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
										<li role="presentation" class="active">
										 	<a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">
										 		 Áreas de Interesse
										 	</a>
										 </li>
										<li role="presentation" class="">
										  <a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">
										         Pojetos Orientados
										   </a>
										</li>
										<li role="presentation" class="">
										  <a href="#tab_content3"  role="tab" id="profile-tab1" data-toggle="tab" aria-expanded="false">
										   		Palavras Chave
										    </a>
										 </li>
										<li role="presentation" class="">
										  <a href="#tab_content4" id="profile-tab2" data-toggle="tab" aria-expanded="false">
										     Participação de Bancas
										   </a>
										 </li>
										<li role="presentation" class="">
										  <a href="#tab_content5" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">
										   Professores Externos
										   </a>
										 </li>
										<li role="presentation" class="">
										<a href="#tab_content6" role="tab" id="profile-tab4" data-toggle="tab" aria-expanded="false">
										     Convites de Projetos
										  </a>
										</li>
									</ul>
									
									<div id="myTabContent" class="tab-content">  
									
										<!-- INICIO Áreas de Interesse -->
									 <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab" aria-labelledby="home-tab">
										<jsp:include page="listaAreasDeInteresse.jsp">
											<jsp:param name="areaDeInteresseList" value="${areaDeInteresseList}" />
											<jsp:param name="professor" value="${professor}" />
										</jsp:include>
										
									</div> <!-- FINAL Áreas de Interesse -->
						
										<!-- INICIO Projetos Orientados -->
										<div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
										<jsp:include page="listaProjetoOrientados.jsp">
											<jsp:param name="professor" value="${professor}" />
										</jsp:include>
											
										</div> 		<!-- FINAL Projetos Orientados -->
									
										<div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab1">
										  Em contrução  Palavras Chave
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
																data-icon=""></span> <a href="#"><i
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
															<span class="fs1" aria-hidden="true" data-icon=""></span>
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
																data-icon=""></span> <a href="#"><i
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
															<span class="fs1" aria-hidden="true" data-icon=""></span>
															<a href="#" data-original-title="">Download</a>
														</p>
													</div></li>

											</ul>
											<!-- end recent activity -->
										</div>
										
										<div role="tabpanel" class="tab-pane fade" id="tab_content4" aria-labelledby="profile-tab2">
										 Em contrução    Participação de Bancas
										
										</div>
										<div role="tabpanel" class="tab-pane fade" id="tab_content5" aria-labelledby="profile-tab3">
										 Em construção  	   Professores Externos
										
										</div>
										<div role="tabpanel" class="tab-pane fade" id="tab_content6" aria-labelledby="profile-tab4">
											Em contrução  Convites de Projetos
										
										
										</div>
										
									</div>
								</div>