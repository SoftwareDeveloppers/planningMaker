
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
	 <% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
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
									<i class="icofont icofont-file-code bg-c-yellow"></i>
									<div class="d-inline">
										<h4>Planning des soutenances</h4>

									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="page-header-breadcrumb">
									<ul class="breadcrumb-title">
										<li class="breadcrumb-item"><a href="fiche-de-voeux.html">
												<i class="icofont icofont-home"></i>
										</a></li>
										<li class="breadcrumb-item"><a href="#!">Consulter</a></li>
										<li class="breadcrumb-item"><a href="#!">Planning des
												soutenances${nbrjour }</a></li>
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

												<c:if test="${ remplie}">
													<c:if test="${ !empty(sessionScope.idAgent)}">
													
													<button class="btn hor-grd btn-grd-inverse" data-toggle="modal" data-target="#myModalsupp">Supprimer planning des soutenances</button>
														<!-- Modal supp -->
															  <div id="myModalsupp" class="modal fade" role="dialog">
															    <div class="modal-dialog modal-sm">
															      <!-- Modal content-->
															      <div class="modal-content">
															        <div class="modal-body">
															          <p style="text-align:center;"><img src="assets/images/danger.png" />
															          <p style="text-align:center; font-size: 20px;">Voulez allez supprimer le planning des soutenances</p>
																      </div>
																      <div class="modal-footer">           
																		<form action="SupprmerSoutenancesController" method="POST">
															        <p style="text-align:center;">
															          <button type="button" class="btn btn-light" data-dismiss="modal">Annuler</button>
															          <button type="submit" class="hvr-icon-sink-away btn btn-danger">Supprimer</button>
															        </p>
																		 </form> 
																      </div>
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
																			<th>Numero de la salle</th>
																			<th>Date debut</th>
																			<th>Heure</th>
																			<th>Titre sujet</th>
																			<th>Nom et Prenom</th>
																			<th>Les juries</th>
																		</tr>
																	</thead>
																	<tbody>
																		<c:forEach items="${ soutnances }" var="sout"
																			varStatus="stat">

																			<c:if test="${(stat.index mod limitenbrDeJuree) == 0 }">
																				<tr>
																					<th rowspan="${limitenbrDeJuree}" align="center">${sout.getId_salle()}
																					</th>
																					<th rowspan="${limitenbrDeJuree}" align="center">${sout.date}</th>
																					<th rowspan="${limitenbrDeJuree}" align="center">${sout.getHeure()}
																					</th>
																					<th rowspan="${limitenbrDeJuree}" align="center">${sout.titreSujets}
																					</th>
																					<th rowspan="${limitenbrDeJuree}" align="center">${sout.etudnom}
																						${sout.etudePrenom}</th>
																			</c:if>
																			<td>${sout.jurenom}${sout.jurePrenom}</td>
																			</tr>
																		</c:forEach>
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</c:if>
												<c:choose>
												<c:when test="${!remplie && sessionScope.idAgent!=null && aff}">
												

													<form action="SoutenanceController" method="POST">
														<div class="form-group">
															<label for="dateN">Date début soutenances</label> <input
																type="date" name="DateSoutenance" class="form-control" required>
														</div>
														<button class="btn hor-grd btn-grd-inverse">Planifier
															les soutenances</button>
													</form>
														<div class="card-header" align="center">
												<h5>Aucune soutenance programmée pour le moment</h5>
												<span>
												Attenttion les étudiants avec un taux d'avancement inférieur
												</span>
												
											</div>
											</c:when>
											<c:when test="${!remplie}">
											<div class="card-header" align="center">
												<h5>Aucune soutenance programmée pour le moment</h5>
												<span>Planification des soutenances non autorisé, aucune affectation trouvée
												</span>
												
											</div>
											</c:when>
											</c:choose>
											
												
											
												
												
													
											</div>
											
										</div>
										
										<!--row ends-->

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
		</div>
		<!-- Main-body end -->
		
	</div>
</div>
</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>