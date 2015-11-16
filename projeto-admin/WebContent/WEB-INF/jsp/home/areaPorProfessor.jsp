<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>GeProFi-Gerenciador de Projetos Finais</title>

    <!-- Bootstrap core CSS -->

    <link href="${pageContext.request.contextPath}/production/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/production/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="${pageContext.request.contextPath}/production/css/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/icheck/flat/green.css" rel="stylesheet">


    <script src="${pageContext.request.contextPath}/production/js/jquery.min.js"></script>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="${pageContext.request.contextPath}/production/home/home" class="site_title"> <span>GeProFi</span></a>
                    </div>
                    <div class="clearfix"></div>


                    <!-- menu prile quick info -->
                    <div class="profile">
                        <!-- div class="profile_pic">
                            <img src="${pageContext.request.contextPath}/production/images/logoGeProFi.png" alt="..." class="img-circle profile_img">
                        </div-->
                        <!-- div class="profile_info">
                            <span>Welcome,</span>
                            <h2>Anthony Fernando</h2>
                        </div-->
                    </div>
                    <!-- /menu prile quick info -->

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            
                            <ul class="nav side-menu">
                            <br>
                                <li><a><i class="fa fa-home"></i> Areas de interesses <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="${pageContext.request.contextPath}/home/areaPorProfessor">Professores</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/home/areaPorArea"> Areas </a>
                                        </li>
                                     </ul>
                                </li>
                               
                            </ul>
                        </div>
                        
                        </div>

                    </div>
               </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        
                            

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
                            <h3>Areas de interesse</h3>
                        </div>

                        <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button">ok</button>
                        </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="x_panel">
                                <div class="x_content">

                                    <div class="row">

                                        <div class="col-md-12 col-sm-12 col-xs-12" style="text-align:center;">
                                            <ul class="pagination pagination-split">
                                                <li><a href="#">A</a>
                                                </li>
                                                <li><a href="#">B</a>
                                                </li>
                                                <li><a href="#">C</a>
                                                </li>
                                                <li><a href="#">D</a>
                                                </li>
                                                <li><a href="#">E</a>
                                                </li>
                                                <li>...</li>
                                                <li><a href="#">W</a>
                                                </li>
                                                <li><a href="#">X</a>
                                                </li>
                                                <li><a href="#">Y</a>
                                                </li>
                                                <li><a href="#">Z</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>


                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/img.jpg" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/user.png" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/user.png" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/user.png" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/user.png" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/user.png" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/user.png" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/user.png" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                                            <div class="well profile_view">
                                                <div class="col-sm-12">
                                                    <h4 class="brief"><i>Digital Strategist</i></h4>
                                                    <div class="left col-xs-7">
                                                        <h2>Nicole Pearson</h2>
                                                        <p><strong>About: </strong> Web Designer / UI. </p>
                                                        <ul class="list-unstyled">
                                                            <li><i class="fa fa-phone"></i> Address: </li>
                                                            <li><i class="fa fa-phone"></i> Address: </li>

                                                        </ul>
                                                    </div>
                                                    <div class="right col-xs-5 text-center">
                                                        <img src="images/user.png" alt="" class="img-circle img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 bottom text-center">
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <p class="ratings">
                                                            <a>4.0</a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star"></span></a>
                                                            <a href="#"><span class="fa fa-star-o"></span></a>
                                                        </p>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6 emphasis">
                                                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                                            </i> <i class="fa fa-comments-o"></i> </button>
                                                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                                                            </i> View Profile </button>
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

                <!-- footer content -->
                <footer>
                    <div class="">
                        <p class="pull-right"> Desenvolvido por Carina Dias e Domingas Andrade. 
                            <span class="lead">  GeProFi!</span>
                        </p>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->

            </div>
            <!-- /page content -->
        </div>

    </div>

    <div id="custom_notifications" class="custom-notifications dsp_none">
        <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
        </ul>
        <div class="clearfix"></div>
        <div id="notif-group" class="tabbed_notifications"></div>
    </div>

    <script src="${pageContext.request.contextPath}/production/js/bootstrap.min.js"></script>

    <!-- chart js -->
    <script src="${pageContext.request.contextPath}/production/js/chartjs/chart.min.js"></script>
    <!-- bootstrap progress js -->
    <script src="${pageContext.request.contextPath}/production/js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="${pageContext.request.contextPath}/production/js/icheck/icheck.min.js"></script>

    <script src="${pageContext.request.contextPath}/production/js/custom.js"></script>

</body>

</html>