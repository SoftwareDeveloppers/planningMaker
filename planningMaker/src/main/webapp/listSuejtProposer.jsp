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
					<!-- Page body start -->
					<div class="page-body">

						<div class="row">
							<div class="col-lg-12">
								<!-- Draggable Multiple List card start -->
								<div class="card">

									<div class="card-header">
										<h5 class="card-header-text">Liste des sujets proposé :</h5>
										<div class="card-header-right">
											<i class="icofont icofont-spinner-alt-5"></i>
										</div>
									</div>
									<div class="card-block p-b-0">
										<div class="row">
											<div class="col-md-12">

												<c:forEach items="${ sujets }" var="sujet">
													<div class="sortable-moves ">
														<div class="row">
															<div class="col-sm-2">
																<h5>#${ sujet.specialite}</h5>
															</div>
															<div class="col-sm-6">
																<h6>${ sujet.titre}</h6>
																<p>${ sujet.contenu }</p>
															</div>
															<div class="col-sm-4">
																<button type="button"
																	class="btn btn-info btn-modifier waves-effect"
																	data-toggle="modal"
																	data-target="#modif-Modal${sujet.id}">Modifier</button>

																<button type="button"
																	class="btn btn-danger waves-effect" data-toggle="modal"
																	data-target="#supp-Modal${ sujet.id}">Supprimer</button>
															</div>
														</div>
													</div>
													<div class="modal fade" id="supp-Modal${sujet.id}"
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
																	<h6>Vous etes sur de vouloir supprimer ${ sujet.titre}?</h6>
																	</p>
																</div>
																<div class="modal-footer">
																	<button type="button"
																		class="btn btn-default waves-effect "
																		data-dismiss="modal">Close</button>
																	<form role="form" method="post"
																		action="ListSujetProposer">
																		<input type="hidden" name="sujetSup"
																			value="${sujet.id}">
																		<button type="submit"
																			class="btn btn-primary waves-effect waves-light ">Oui,
																			Supprimer</button>
																	</form>

																</div>
															</div>
														</div>
													</div>
													<div class="modal fade" id="modif-Modal${sujet.id}"
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
																		action="ListSujetProposer">
																		<div class="form-group">
																			<label for="titre">Titre</label> <input type="text"
																				name="titre" class="form-control"
																				value="${sujet.titre}">
																		</div>
																		<div class="form-group">
																			<label for="contenu">Contenu</label>
																			<textarea name="contenu" class="form-control" rows="8">
																					${sujet.contenu}</textarea>
																		</div>

																		<input type="hidden" name="sujetMod"
																			class="form-control" value="${sujet.id}">
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
												</c:forEach>
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
</div>


<jsp:include page="footer.jsp"></jsp:include>