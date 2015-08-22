<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${linkTo[PrimeiraController].index}">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav">
        <li><a href="${linkTo[ProjetosController].lista}">Projetos </a></li>
        <li><a href="${linkTo[ProfessoresController].lista}">Professores</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Funcionalidades <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${linkTo[AreaDeInteresseController].lista}">Áreas De Interesse</a></li>
            <li><a href="${linkTo[AlunosController].lista}">Alunos</a></li>
            <li><a href="${linkTo[BancaController].lista}">Banca</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="${linkTo[ProfessorExternoController].lista}">Professores Externos</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Projetos Finalizados</a></li>
        
     
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

