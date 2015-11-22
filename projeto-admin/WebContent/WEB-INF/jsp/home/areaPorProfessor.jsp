<jsp:include page="heardHome.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="menuHome.jsp">
	<jsp:param value="teste" name="1" />
</jsp:include>


<!-- top navigation -->
<div class="top_nav">

	<div class="nav_menu">
		<nav class="" role="navigation">
			<div class="nav toggle">
				<a id="menu_toggle"><i class="fa fa-bars"></i></a>
			</div>
			<ul>
				<li role="presentation" class="dropdown"><a href="javascript:;"
					class="dropdown-toggle info-number" data-toggle="dropdown"
					aria-expanded="false"></a>

					<ul id="menu1"
						class="dropdown-menu list-unstyled msg_list animated fadeInDown"
						role="menu">

					</ul></li>
			</ul>

		</nav>
	</div>

</div>
<!-- /top navigation -->

<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Professor Por 햞eas de Interesse</h3>
			</div>

		</div>
		<div class="clearfix"></div>

		<div class="row">

			<div class="col-md-12 col-sm-12 col-xs-12">



				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<table id="example"
					class="table table-striped responsive-utilities jambo_table">
					<thead>
						<tr class="headings">
							<th><input type="checkbox" class="tableflat"></th>
							<th>Professor</th>
							<th>E-Mail</th>
							<th>햞ea de Interesse</th>
							<th>Nome da 햞ea</th>
							<th>Detalhes</th>
							<!--      <th class=" no-link last"><span class="nobr">Arquivo</span> -->
							</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="areas" items="${ListAreasProfessores}"
							varStatus="id">
							<tr class="even pointer">
								<td class="a-center "><input type="checkbox"
									class="tableflat"></td>
								<td class=" ">${areas.professor.nome}</td>
								<td class=" ">${areas.professor.email}</td>
								<td class=" ">${areas.areaDeInteresse.area}</td>
								<td class=" ">${areas.areaDeInteresse.nome}</td>

								<td class=" ">

									<button type="button" class="btn btn-primary"
										data-toggle="modal"
										data-target=".bs-example-${areas.areaDeInteresse.codAreaDeInteresse}-modal-lg">Detalhes</button>

									<div
										class="modal fade bs-example-${areas.areaDeInteresse.codAreaDeInteresse}-modal-lg"
										tabindex="-1" role="dialog" aria-hidden="true">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">

												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">
														<span aria-hidden="true">X</span>
													</button><br>
													<h4 class="modal-title" id="myModalLabel"></h4>
												</div>
												<div class="modal-body">
													<h4>Dados do Professor</h4>
													<p>Nome: ${areas.professor.nome}</p>
													<p>E-mail: ${areas.professor.email}</p>
													<p>Sala: ${areas.professor.sala}</p>
													<hr>

													<h4>Dados da 햞ea de Interesse</h4>
													<p>햞ea: ${areas.areaDeInteresse.area}</p>
													<p>Nome: ${areas.areaDeInteresse.nome}</p>
													<p>Descri豫o: ${areas.areaDeInteresse.descricao}</p>



												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>

											</div>
										</div>
									</div>







								</td>
							</tr>
						</c:forEach>

					</tbody>

				</table>
			</div>
		</div>
	</div>

	<br /> <br /> <br />

</div>


<footer>
	<jsp:include page="../professores/rodape.jsp">
		<jsp:param value="teste" name="1" />
	</jsp:include>

</footer>
<!-- /footer content -->
<!-- /footer content -->

<!-- /page content -->



</div>
<!--DIV class="right_col" role="main" -->

<!-- INICIO DECLA  -->
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


<!-- Datatables -->
<script
	src="${pageContext.request.contextPath}/production/js/datatables/js/jquery.dataTables.js"></script>
<script
	src="${pageContext.request.contextPath}/production/js/datatables/tools/js/dataTables.tableTools.js"></script>
<script>
            $(document).ready(function () {
                $('input.tableflat').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });

            var asInitVals = new Array();
            $(document).ready(function () {
                var oTable = $('#example').dataTable({
                    "oLanguage": {
                        "sSearch": "Busca em todas as colunas:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 10,
                    "sPaginationType": "full_numbers",
                    "tableTools": {
                        "sSwfPath": "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
                    }
                });
                $("tfoot input").keyup(function () {
                    /* Filter on the column based on the index of this element's parent <th> */
                    oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
                });
                $("tfoot input").each(function (i) {
                    asInitVals[i] = this.value;
                });
                $("tfoot input").focus(function () {
                    if (this.className == "search_init") {
                        this.className = "";
                        this.value = "";
                    }
                });
                $("tfoot input").blur(function (i) {
                    if (this.value == "") {
                        this.className = "search_init";
                        this.value = asInitVals[$("tfoot input").index(this)];
                    }
                });
            });
        </script>
</body>

</html>