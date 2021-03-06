<!DOCTYPE html>
<html lang="pt-br">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>EasyBuffet - Meus Eventos</title>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="..\vendor\font-awesome\css\font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat|Oswald|Roboto"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"
	rel="stylesheet">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Custom CSS -->
<link href="css/sb-admin.css" rel="stylesheet">

</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navCollapse">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="..\index.html"><img
					src="..\img\logo.png" alt="EasyBuffet"></a>
			</div>
			<!-- Top Menu Items -->
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<div class="collapse navbar-collapse navbar-ex1-collapse"
				id="navCollapse" style="margin-right: 1%;">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="dashboard.html"><i
							class="fa fa-fw fa-dashboard"></i> Dashboard</a></li>
					<li class="active"><a href="#"><i
							class="fa fa-fw fa-table"></i> Meus Eventos</a></li>
					<li><a href="..\index.html"><i class="fa fa-fw fa-power-off"></i> Sair</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
		<div id="page-wrapper">
			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							Meus Eventos <small>Historico de Eventos</small>
						</h1>
						<ol class="breadcrumb">
							<li class="active"><i class="fa fa-cutlery"></i> Aqui voc�
								poder� ver seus eventos ativos no momento.</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="table-responsive">
							<table class="table table-hover table-striped" id="eventsResult">
								<thead>
									<tr>
										<th>ID</th>
										<th>Nome</th>
										<th>Data</th>
										<th>Convidados</th>
										<th>A��es</th>
									</tr>
								</thead>

								<c:forEach items="${listaEventos}" var="events">
									<tr>
										<td>${events.id}</td>
										<td>${events.nomeEvento}</td>
										<td>${events.dataString}</td>
										<td>${events.numeroConvidados}</td>
										<td><a
											href="edit-event.html?operacao=editar&id=${events.id}"
											class="btn btn-warning btn-sm" role="button"> <span
												class="fa fa-pencil" aria-hidden="true"></span> Editar
										</a>
										<a
											href="events.html?operacao=excluir&id=${events.id}"
											class="btn btn-danger btn-sm" role="button"> <span
												class="fa fa-trash" aria-hidden="true"></span> Excluir
										</a></td>
									</tr>
								</c:forEach>

							</table>
						</div>
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<!-- <script src="js/events.js"></script> -->
</body>

</html>