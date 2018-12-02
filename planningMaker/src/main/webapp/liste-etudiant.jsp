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
										<h4>Liste des etudiants</h4>
										<span>Trouver dans cette page la liste des etudiants
											inscrit </span>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="page-header-breadcrumb">
									<ul class="breadcrumb-title">
										<li class="breadcrumb-item"> <i
												class="icofont icofont-home"></i>
										</li>
										<li class="breadcrumb-item"><a href="#!">Consulter</a></li>
										<li class="breadcrumb-item"><a href="#!">Liste
												etudiant</a></li>
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
														<th>Nom et prenom</th>
														<th>Specialité</th>
														<th>Promotion</th>
														<th>Moyenne</th>
														<th>Date de naissance</th>
														<th>Taux</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${ etudiants }" var="etudiant">
														<tr>
															<td>${ etudiant.nom} ${ etudiant.prenom}</td>
															<td>${ etudiant.specialite}</td>
															<td>${ etudiant.promotion}</td>
															<td>${ etudiant.moy}</td>
															<td>${ etudiant.dateNaissance}</td>
															<td>${ etudiant.taux}</td>
															<td>
																<button type="button"
																	class="btn btn-warning btn-modifier waves-effect"
																	data-toggle="modal"
																	data-target="#modif-Modal${etudiant.id}">Modifier</button>

																<button type="button"
																	class="btn btn-danger waves-effect" data-toggle="modal"
																	data-target="#supp-Modal${ etudiant.id}">Supprimer</button>
															</td>
															<div class="modal fade" id="supp-Modal${etudiant.id}"
																tabindex="-1" role="dialog">
																<div class="modal-dialog" role="document">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">Confirmer</h4>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">

																			<p>
																			<h6>Vous etes sûr de vouloir supprimer ${ etudiant.nom}
																				${ etudiant.prenom}?</h6>
																			</p>
																		</div>
																		<div class="modal-footer">
																			<button type="button"
																				class="btn btn-default waves-effect "
																				data-dismiss="modal">Close</button>
																			<form role="form" method="post"
																				action="EtudiantController">
																				<input type="hidden" name="etudSupp"
																					value="${etudiant.id}">
																				<button type="submit"
																					class="btn btn-primary waves-effect waves-light ">Oui,
																					Supprimer</button>
																			</form>

																		</div>
																	</div>
																</div>
															</div>


															<div class="modal fade" id="modif-Modal${etudiant.id}"
																tabindex="-1" role="dialog">
																<div class="modal-dialog" role="document">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title">Modifier</h4>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">

																			<form role="form" method="post"
																				action="EtudiantController">
																				<div class="form-group">
																					<label for="nom">Nom</label> 
																					<input type="text" name="nom" class="form-control"
																						value="${etudiant.nom}">
																				</div>
																				<div class="form-group">
																					<label for="prenom">Prenom</label> <input
																						type="text" name="prenom" id="prenom"
																						class="form-control" value="${etudiant.prenom}">
																				</div>
																				<div class="form-group">
																					<label for="dateN">Date de naissance</label> <input
																						type="date" name="dateN" id="dateN"
																						value="${etudiant.dateNaissance}"
																						class="form-control">
																				</div>
																				<div class="form-group">
																					<label for="specialite">spécialité</label> <input
																						type="text" name="specialite" id="specialite"
																						value="${etudiant.specialite}"
																						class="form-control">
																				</div>

																				<div class="form-group">
																					<label for="promotion">Promotion </label> <input
																						type="text" name="promotion" id="promotion"
																						class="form-control" value="${etudiant.promotion}">
																				</div>

																				<div class="form-group">
																					<label for="mou">Moyenne </label> <input
																						type="text" name="moyenne" id="moyenne"
																						class="form-control" value="${etudiant.moy}">
																				</div>


																				<input type="hidden" name="email"
																					class="form-control" id="email"
																					value="${etudiant.email}">
																					<input type="hidden" name="idFiche"
																					class="form-control" id="idFiche"
																					value="${etudiant.id_FicheDeVoeux}">
																					<input type="hidden" name=idEns
																					class="form-control" id="idEns"
																					value="${etudiant.id_Enseignant}">
																					<input type="hidden" name=taux
																					class="form-control" id="taux"
																					value="${etudiant.taux}">

																				<div class="form-group">
																					<label for="mdp">Mot de passe</label> <input
																						type="password" name="mdp" id="mdp"
																						class="form-control" value="${etudiant.mdp}">
																					<input type="hidden" name="etudModif"
																						value="${etudiant.id}">
																				</div>
																		</div>
																		<div class="modal-footer">
																			<button type="button"
																				class="btn btn-default waves-effect "
																				data-dismiss="modal">Close</button>
																			<button type="submit"
																				class="btn btn-primary waves-effect waves-light ">Sauvegarder</button>
																			</form>

																		</div>
																	</div>
																</div>
															</div>


														</tr>
													</c:forEach>
												</tbody>
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
<jsp:include page="footer.jsp"></jsp:include>