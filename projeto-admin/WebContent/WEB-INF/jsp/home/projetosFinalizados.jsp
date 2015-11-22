
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<jsp:include page="heardHome.jsp">
	<jsp:param value="teste" name="1"/>
</jsp:include>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<jsp:include page="menuHome.jsp">
	<jsp:param value="teste" name="1"/>
</jsp:include>
            <!-- top navigation -->
            <div class="top_nav">

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        
                           <ul>

                            <li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false"></a>
                                  
                                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                                   
                                </ul>
                            </li>
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
                            <h3>
                 			  Projetos Finalizados            
               				 </h3>
                        </div>

                        
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                           
                                       
                                   
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <input type="checkbox" class="tableflat">
                                                </th>
                                                <th>Título </th>
                                                <th>Tema </th>
                                                <th>Descrição</th>
                                                <th>Ano </th>
                                                <th>Palavras-Chave </th>  
                                                <th class=" no-link last"><span class="nobr">Arquivo</span>
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach var="projeto" items="${ListPorjetos}" varStatus="id">
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">${projeto.titulo}</td>
                                                <td class=" ">${projeto.tema}</td>
                                                <td class=" ">${projeto.descricao}</td>
                                                <td class=" "> <fmt:formatDate	value="${projeto.dataCadastro}" pattern="yyyy" /> </td>
                                                
                                                <td class=" ">${projeto.palavraChave}</td>  
                                                <td class=" last"><a
										href="${linkTo[HomeController].downloadMonografia}?codProjeto=${projeto.codProjeto}"><i class="fa fa-download"></i> Monografia</a>
                                                </td>
                                            </tr>
                                         	</c:forEach>
                                        
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>

                        <br />
                        <br />
                        <br />

                    </div>
                </div>
                    <!-- footer content -->
                <!-- footer content -->
                <footer>
                   <jsp:include page="../professores/rodape.jsp">
		<jsp:param value="teste" name="1" />
	</jsp:include>
                   
                </footer>
                <!-- /footer content -->
                <!-- /footer content -->
                    
                <!-- /page content -->



    </div><!--DIV class="right_col" role="main" -->

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


        <!-- Datatables -->
        <script src="${pageContext.request.contextPath}/production/js/datatables/js/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/production/js/datatables/tools/js/dataTables.tableTools.js"></script>
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
                    'iDisplayLength': 3,
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