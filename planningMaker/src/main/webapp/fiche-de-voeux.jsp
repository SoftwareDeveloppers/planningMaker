
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:choose>
	<c:when test="${ empty sessionScope.idEtudiant}">
		<c:redirect url="Login"></c:redirect>
	</c:when>
	<c:otherwise>
		<jsp:include page="header.jsp"></jsp:include>
		<script type="text/javascript">
			function fct() {

				var id = $('button#modifier').val();
				$.ajax({
					type : 'get',

					url : 'ModifierFiche',
					success : function(data) {

						$('#info').html(data);
					}
				});
			}
		</script>
		<c:if test="${ remplie}">

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
												<i class="icofont icofont-table bg-c-blue"></i>
												<div class="d-inline">
													<h4>Fiche de voeux</h4>
													<span>Voici vos 5 sujets ,vous pouvez changer votre choix </span>
												</div>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="page-header-breadcrumb">
												<ul class="breadcrumb-title">
													<li class="breadcrumb-item"><a href="index.html">
															<i class="icofont icofont-home"></i>
													</a></li>
													<li class="breadcrumb-item"><a href="#!">Consulter</a>
													</li>
													<li class="breadcrumb-item"><a href="#!">Liste des sujets
													</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- Page-header end -->

								<!-- Page-body start -->
								<div class="page-body">
									<div class="row">
										<div class="col-sm-12">
											<!-- Zero config.table start -->
											<div class="card">
												<div class="card-header">
													<div class="card-header-right">
														<i class="icofont icofont-spinner-alt-5"></i>
													</div>
												</div>
												<div class="card-block">
													<div class="dt-responsive table-responsive">
														<table id="simpletable"
															class="table table-striped table-bordered nowrap">
															<thead>
																<tr>
																	<th>choix</th>
																	<th>titre</th>
																	<th>specialité</th>
																	<th>date de création</th>
																	<th>Encadreur</th>


																</tr>
															</thead>
															<tbody>
																<c:forEach items="${sujetsChoisi}" var="sujet" varStatus="ch">
																  <c:forEach items="${listEns}" var="ens">
																   <c:if test="${sujet.id_enseignant == ens.id}">
																	 <tr>
																		<td>${ch.count }</td>
																		<td>${sujet.titre}</td>
																		<td>${sujet.specialite}</td>
																		<td>${sujet.dateCreation}</td>
																		<td>${ens.nom} ${ens.prenom}</td>																	 
																	 </tr>
																	</c:if>
																  </c:forEach>
																</c:forEach>

															</tbody>
															<tfoot>
																<tr>
																	<td><button class="btn btn-info btn-modifier"
																			onclick="fct();" id="modifier"
																			value="${sessionScope.idEtudiant}">Modifier</button></td>
																</tr>
															</tfoot>
														</table>
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

		</c:if>
		<!--modal start -->
		<div class="modal fade bd-example-modal-lg" id="myModal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							style="float: right;">&times;</button>
						<h3 style="color: blue">détaille</h3>

					</div>
					<div class="modal-body" id="info"></div>


				</div>
			</div>
		</div>
		<!--modal ends-->

		<c:if test="${ !remplie }">

			<div class="pcoded-content">
				<div class="pcoded-inner-content">

					<!-- Main-body start -->
					<div class="main-body">
						<div class="page-wrapper">
							<!-- Page-header start -->
							<div class="page-header card">
								<div class="row align-items-end">
									<div class="col-lg-8">
										<div class="page-header-title">
											<i class="icofont icofont-file-code bg-c-blue"></i>
											<div class="d-inline">
												<h4>Fiche De Voeux ${sessionScope.idEtudiant }</h4>
												<span>faites un choix <code>${config.nbrChoixSujet }</code> 
												</span>
											</div>
										</div>
									</div>
									<div class="col-lg-4">
										<div class="page-header-breadcrumb">
											<ul class="breadcrumb-title">
												<li class="breadcrumb-item"><a
													href="fiche-de-voeux.html"> <i
														class="icofont icofont-home"></i>
												</a></li>
												<li class="breadcrumb-item"><a href="#!">choix</a></li>
												<li class="breadcrumb-item"><a href="#!">Fiche de
														voeux</a></li>
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
												<h5>Vous pouvez choisir ${config.nbrChoixSujet} sujets !</h5>
												<div class="card-header-right">
													<i class="icofont icofont-spinner-alt-5"></i>
												</div>

												<div class="card-header-right">
													<i class="icofont icofont-spinner-alt-5"></i>
												</div>

											</div>
											<div class="card-block">
												<h4 class="sub-title">Basic Inputs</h4>
												<form method="POST" action="AjouterFicheDeVoeux">
													<c:forEach begin="1" end="${config.nbrChoixSujet}" varStatus="stat">
														<div class="form-group row">
															<label class="col-sm-2 col-form-label">Sujet n°${ stat.index }:
															</label>
															<div class="ajax col-sm-10">
																<select id="select${ stat.index }"
																	name="sujet${ stat.index }" class="form-control">
																	<c:forEach items="${ sujets }" var="sujet">
																		<option value="${ sujet.id }">${ sujet.titre }</option>
																	</c:forEach>
																</select>
															</div>
														</div>
													</c:forEach>

													<div class="ajax"></div>
													<div class="form-group row">
														<label class="col-sm-2"></label>
														<div class="col-sm-10">
															<button type="submit" class="red btn btn-primary m-b-0">Validez</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<!-- Basic Form Inputs card end -->
									</div>
									<div class="col-sm-1"></div>
								</div>
							</div>
							<!-- Page body end -->
							<!--/*********************************************************************************************-->
						</div>
					</div>
					<!-- Main-body end -->
					<div id="styleSelector"></div>
				</div>
			</div>
			</div>
			</div>
			</div>
			</div>

		</c:if>
		<jsp:include page="footer.jsp"></jsp:include>
		<script type="text/javascript">
			$(function() {

				$(".red")
						.click(
								function() {

									var idSujet1 = $("select#select1").val();
									var idSujet2 = $("select#select2").val();
									var idSujet3 = $("select#select3").val();
									var idSujet4 = $("select#select4").val();
									var idSujet5 = $("select#select5").val();

									if (	   (idSujet1 != idSujet2 || idSujet1==null || idSujet2==null )
											&& (idSujet1 != idSujet3 || idSujet1==null || idSujet3==null )
											&& (idSujet1 != idSujet4 || idSujet1==null || idSujet4==null )
											&& (idSujet1 != idSujet5 || idSujet1==null || idSujet5==null )
											&& (idSujet2 != idSujet3 || idSujet2==null || idSujet3==null )
											&& (idSujet2 != idSujet4 || idSujet2==null || idSujet4==null )
											&& (idSujet2 != idSujet5 || idSujet2==null || idSujet5==null )
											&& (idSujet3 != idSujet4 || idSujet3==null || idSujet4==null )
											&& (idSujet3 != idSujet5 || idSujet3==null || idSujet5==null )
											&& (idSujet4 != idSujet5 || idSujet4==null || idSujet5==null )
											) {

										return true;
									} else {
										$
												.growl(
														{
															icon : '',
															title : 'Attention ',
															message : 'vous devez choisir des sujets different . ',
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
															delay : 4500,
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
										return false;

									}

									return false;

								});
				return false;
			});
		</script>

	</c:otherwise>
</c:choose>

