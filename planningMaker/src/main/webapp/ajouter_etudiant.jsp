<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="pcoded-content">
	<div class="pcoded-inner-content">

		<!-- Main-body start -->
		<div class="main-body">
			<div class="page-wrapper">
			<div class="page-body m-t-40">
				<!-- Page-header start -->
				<div class="page-header card">
					<div class="row align-items-end">
						<div class="col-lg-8">
							<div class="page-header-title">
								<i class="icofont icofont-file-code bg-c-blue"></i>
								<div class="d-inline">
									<h4>Ajouter étudiant</h4>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="page-header-breadcrumb">
								<ul class="breadcrumb-title">
									<li class="breadcrumb-item"><a href="fiche-de-voeux.html">
											<i class="icofont icofont-home"></i>
									</a></li>
									<li class="breadcrumb-item"><a href="#!">Ajouter</a></li>
									<li class="breadcrumb-item"><a href="#!">Ajouter
											étudiant</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Page-header end -->
				<!--/*********************************************************************************************-->
				<!-- Page body start -->
				<div class="page-body">
					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-10">
							<!-- Basic Form Inputs card start -->
							<div class="card">
								<div class="card-header">

									<div class="card-header-right">
										<i class="icofont icofont-spinner-alt-5"></i>
									</div>

									<div class="card-header-right">
										<i class="icofont icofont-spinner-alt-5"></i>
									</div>

								</div>
								<div class="card-block">

									<div class="row">
										<div class="col-md-12">

											<div class="col-md-8">
												<div>

													<div class="box-content">
														<form role="form" method="post"
															action="EtudiantController">
															<div class="form-group">
																<label for="nom">Nom</label> <input type="text"
																	name="nom" class="form-control" placeholder="Nom"
																	id="nom" required="required">
															</div>
															<div class="form-group">
																<label for="prenom">Prenom</label> <input type="text"
																	name="prenom" id="prenom" class="form-control"
																	placeholder="Prenom" required="required">
															</div>
															<div class="form-group">
																<label for="dateN">Date de naissance</label> <input
																	type="date" name="dateN" id="dateN"
																	class="form-control">
															</div>
															
															<div class="form-group">
																<label for="specialite">spécialité</label>
																<div class="controls">
																	<select name="specialite" id="specialite"
																		class="form-control" required="required">
																		<option>GL</option>
																		<option>RSD</option>
																		<option>SIC</option>
																		<option>MID</option>
																	</select>
																</div>
															</div>
													</div>
													<div class="form-group">
														<label for="promotion">Promotion </label> <input
															type="text" name="promotion" id="promotion"
															class="form-control" placeholder="Promotion">
													</div>
												</div>
												<div class="form-group">
													<label for="mou">Moyenne </label> <input type="text"
														name="moy" id="moy" class="form-control"
														placeholder="Moyenne" required="required">
												</div>
											<div class="form-group">
												<label for="Email">Email</label> <input type="text"
													name="email" class="form-control" id="email"
													placeholder="ex : nom@gmail.com" required="required">
											</div>
											<div class="form-group">
												<label for="mdp">Mot de passe</label> <input type="password"
													name="mdp" id="mdp" class="form-control"
													placeholder="mot de passe" required="required">
											</div></div>
											<div class="form-group row">
												<label class="col-sm-2"></label>
												<div class="col-sm-10">
													<button type="submit" class="valider btn btn-primary m-b-0">Validez</button>
												</div>
											</div>
											</form>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Page body end -->
				<!--/*********************************************************************************************-->
			</div>
			</div>
		</div>
		</div>
		<!-- Main-body end -->
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript">
		$('.valider')
				.click(
						function() {

							var nom = $('#nom').val();
							var prenom = $('#prenom').val();
							var email = $('#email').val();
							var mdp = $('#mdp').val();
							var dateN = $('#dateN').val();
							var specialite = $('#specialite').val();
							var promotion = $('#promotion').val();
							var moy = $('#moy').val();
							if( nom =="" || prenom ==""||email =="" || mdp =="" || dateN =="" ||
									specialite=="" || promotion=="" || moy=="" ){
								$
								.growl(
										{
											icon : '',
											title : 'Veuillez bien remplire tous les champs ',
											message : '',
											url : ''
										},
										{
											element : 'body',
											type : 'danger',
											allow_dismiss : true,
											placement : {
												from : 'top',
												align : 'right'
											},
											offset : {
												x : 30,
												y : 30
											},
											spacing : 10,
											z_index : 999999,
											delay : 3500,
											timer : 1000,
											url_target : '_blank',
											mouse_over : false,
											animate : {
												enter : 'animated fadeInRight',
												exit : 'animated fadeOutRight'
											},
											icon_type : 'class',
											template : '<div data-growl="container" class="alert" role="alert">'
													+ '<button type="button" class="close" data-growl="dismiss">'
													+ '<span aria-hidden="true">&times;</span>'
													+ '<span class="sr-only">Close</span>'
													+ '</button>'
													+ '<span data-growl="icon"></span>'
													+ '<span data-growl="title"></span>'
													+ '<span data-growl="message"></span>'
													+ '<a href="#" data-growl="url"></a>'
													+ '</div>'
										});
								return false ;
							}else{
								
							$.ajax({
										type : 'POST',
										data : {
											nom : nom,
											prenom : prenom,
											email : email,
											mdp : mdp,
											dateN : dateN,
											specialite : specialite,
											promotion : promotion,
											moy : moy
										},
										url : 'EtudiantController',
										success : function(resultat) {
											if (resultat == "mailExiste") {
												$
														.growl(
																{
																	icon : '',
																	title : 'Email ',
																	message : 'existe deja!',
																	url : ''
																},
																{
																	element : 'body',
																	type : 'danger',
																	allow_dismiss : true,
																	placement : {
																		from : 'top',
																		align : 'right'
																	},
																	offset : {
																		x : 30,
																		y : 30
																	},
																	spacing : 10,
																	z_index : 999999,
																	delay : 3500,
																	timer : 1000,
																	url_target : '_blank',
																	mouse_over : false,
																	animate : {
																		enter : 'animated fadeInRight',
																		exit : 'animated fadeOutRight'
																	},
																	icon_type : 'class',
																	template : '<div data-growl="container" class="alert" role="alert">'
																			+ '<button type="button" class="close" data-growl="dismiss">'
																			+ '<span aria-hidden="true">&times;</span>'
																			+ '<span class="sr-only">Close</span>'
																			+ '</button>'
																			+ '<span data-growl="icon"></span>'
																			+ '<span data-growl="title"></span>'
																			+ '<span data-growl="message"></span>'
																			+ '<a href="#" data-growl="url"></a>'
																			+ '</div>'
																});

											}  else {
												document.location.href = resultat
											}
										}
									});
							return false;
						}});
	</script>