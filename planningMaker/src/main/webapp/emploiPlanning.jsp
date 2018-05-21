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
										<span>trouver dans cette page la liste des etudiant
											inscrit </span>
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
										<li class="breadcrumb-item"><a href="#!">Liste
												etudaint</a></li>
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
														<th>numero de la salle</th>
														<th>date debut </th>
														<th>heure</th>
														<th>titre sujet</th>
														<th>les jures</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${ soutnances }" var="sout" varStatus="stat">
													<tr>
													<c:if test="${(stat.index mod 5) == 0 }">
														
															<th rowspan="5" align="center">${sout.getId_salle()}</td>
															<th rowspan="5" align="center">${sout.date}</td>
															<th rowspan="5" align="center">${sout.getHeure()}</td>
															<th rowspan="5" align="center">${sout.titreSujets}</td>
															</c:if>
															<td>
																${sout.jurenom} ${sout.jurePrenom} 
															</td>
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