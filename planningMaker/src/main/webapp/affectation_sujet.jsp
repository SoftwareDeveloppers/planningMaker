
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
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
									<i class="icofont icofont-table bg-c-blue"></i>
									<div class="d-inline">
										<h4>Liste d'affectation des sujets</h4>
										<span>trouver dans cette page la liste d'affectation
											des sujets </span>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="page-header-breadcrumb">
									<ul class="breadcrumb-title">
										<li class="breadcrumb-item"><a href="index.html"> <i
												class="icofont icofont-home"></i>
										</a></li>
										<li class="breadcrumb-item"><a href="#!">Consulter</a></li>
										<li class="breadcrumb-item"><a href="#!">Affectation
												sujets</a></li>
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
								<c:if test="${remplie}">
									<c:if test="${ !empty(sessionScope.idAgent)}">
										<form action="SupprmerSoutenancesController" method="get">
											<button class="btn hor-grd btn-grd-inverse">supprimer
												l'affectation des sujets</button>
										</form>
									</c:if>
									<c:if test="${ !empty(etudiantE)}">
									
										<div class="card">
											<div class="card-header">
												<h5>Attention</h5>
												<span>Des étudiants n'ont pas réussir a choisir un sujet
												</span>
												<div class="card-header-right">
													<ul class="list-unstyled card-option" style="width: 180px;">
														<li><i
															class="icofont icofont-simple-left icofont-simple-right"></i></li>
														<li><i class="icofont icofont-maximize full-card"></i></li>
														<li><i class="icofont icofont-minus minimize-card"></i></li>
														<li><i class="icofont icofont-refresh reload-card"></i></li>
														<li><i class="icofont icofont-error close-card"></i></li>
													</ul>
												</div>
											</div>
											<div class="card-block table-border-style">
												<div class="table-responsive">
													<table class="table table-styling table-info">
														<thead>
															<tr>
																<th>#</th>
																<th>Nom Prenom</th>
																<th>Spécialite</th>
																<th>Adresse</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${etudiantE}" var="etu">
																<tr>
																	<th scope="row">${etu.getId()}</th>
																	<td>${etu.getNom()} ${etu.getPrenom()}</td>
																	<td>${etu.getSpecialite()}</td>
																	<td>${etu.getEmail()}</td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</c:if>
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
															<th>nom etudiant</th>
															<th>prenom etudiant</th>
															<th>specialitet</th>
															<th>sujet</th>
															<th>nom ens</th>
															<th>prenom ens</th>

														</tr>
													</thead>
													<tbody>
														<c:forEach items="${ ListAffectation }" var="affectation">
															<tr>
																<td>${ affectation.nomEtudiant}</td>
																<td>${ affectation.prenomEtudiant}</td>
																<td>${ affectation.getSpecialiteEtudaint()}</td>
																<td>${ affectation.getTitreSjet()}</td>
																<td>${ affectation.getNomEnseignant()}</td>
																<td>${ affectation.getPrenomEnseignant()}</td>
															</tr>
														</c:forEach>
													</tbody>
													<tfoot>

													</tfoot>
												</table>

											</div>
										</div>
									</div>
								</c:if>

								<c:if test="${ !remplie &&  sessionScope.idAgent!=null }">
									<form action="AffectationSujet" method="POST">
										<button class="btn hor-grd btn-grd-inverse">affectation
											des sujets</button>
									</form>
								</c:if>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>