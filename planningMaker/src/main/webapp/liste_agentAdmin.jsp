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
										<h4>Liste des Agent Administratif</h4>
										<span>Trouver dans cette page la liste des agent admin
										</span>
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
										<li class="breadcrumb-item"><a href="#!">Liste Agent
												administratif</a></li>
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
														<th>Id</th>
														<th>Nom et prenom</th>
														<th>Email</th>
														<th>Action</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach items="${ agents }" var="agent">
														<tr>
															<td>${ agent.id}</td>
															<td>${ agent.nom} ${ agent.prenom}</td>
															<td>${ agent.email}</td>
															<td>
																<button type="button"
																	class="btn btn-warning btn-modifier waves-effect"
																	data-toggle="modal"
																	data-target="#modif-Modal${agent.id}">Modifier</button>
																
																<c:if test="${agent.id != 1}">
																<button type="button"
																	class="btn btn-danger waves-effect" data-toggle="modal"
																	data-target="#supp-Modal${agent.id}">Supprimer</button>
																</c:if>
															</td>

															<div class="modal fade" id="supp-Modal${agent.id}"
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
																			<h6>Vous etes sur de vouloir supprimer ${ agent.nom}
																				${ agent.prenom}?</h6>
																			</p>
																		</div>
																		<div class="modal-footer">
																			<button type="button"
																				class="btn btn-default waves-effect "
																				data-dismiss="modal">Close</button>
																			<form role="form" method="post"
																				action="AgentController">
																				<input type="hidden" name="agSupp"
																					value="${agent.id}">
																				<button type="submit"
																					class="btn btn-primary waves-effect waves-light ">Oui,
																					Supprimer</button>
																			</form>

																		</div>
																	</div>
																</div>
															</div>

															<div class="modal fade" id="modif-Modal${agent.id}"
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
																			<form method="Post" action="AgentController">
																			<input type="hidden"
																						name="modif" id="modif" class="form-control"
																						value="${agent.id}">
																				<div class="form-group">
																					<label for="nom">Nom</label> <input type="text"
																						name="nom" id="nom" class="form-control"
																						value="${agent.nom}">

																				</div>
																				<div class="form-group">
																					<label for="prenom">Prenom</label> <input
																						type="text" name="prenom" id="prenom"
																						class="form-control" value="${agent.prenom}">
																				</div>

																				<input type="hidden"
																						name="email" id="email" class="form-control"
																						value="${agent.email}">
																				
																				<div class="form-group">
																					<label for="mdp">Mot de passe</label> <input
																						type="password" name="mdp" id="mdp"
																						class="form-control" value="${agent.mdp}">
																				</div>
																				<div class="form-group row">
																					<label class="col-sm-2"></label>
																					<div class="col-sm-10">
																						<button type="submit"
																							class="valider btn btn-primary m-b-0">Modifier</button>
																					</div>
																				</div>
																			</form>

																		</div>
																	</div>
																</div>
															</div>
														</tr>
													</c:forEach>
												</tbody>
												<tfoot>
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


<jsp:include page="footer.jsp"></jsp:include>
	