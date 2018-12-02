<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:choose>
	<c:when test="${ empty sessionScope.idAgent }">
		<c:redirect url="Login"></c:redirect>
	</c:when>
	<c:when test="${ !empty sessionScope.idAgent }">


		<jsp:include page="header.jsp"></jsp:include>

		<br>
		<br>
		<br>
		<br>
		<div align="center">
			<!-- Client Map Start -->
			<div class="col-md-12 col-xl-8 ">
				<div class="card">

					<form action="./Configuration" method="POST">
						<div class="card-block user-detail-card">

							<div class="row">
								<div class="col-sm-12 user-detail">
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">Nombre de choix dans la fiche
												de voeux :</h6>
										</div>
										<div class="col-sm-7">
											<input type="text" name="nbrChoixSujet" id="nbrChoixSujet" class="form-control" 
												value="${config.nbrChoixSujet}"></input>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">Nombre de sujet proposé par
												enseignant :</h6>
										</div>
										<div class="col-sm-7">
											<input type="text" name="nbrSujetProposer" class="form-control" 
												id="nbrSujetProposer" value="${config.nbrSujetProposer}"></input>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">Nombre de juries :</h6>
										</div>
										<div class="col-sm-7">
											<input type="text" name="nbrJuree" id="nbrJuree" class="form-control"  value="${config.nbrJuree}"></input>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">Specifier le taux d'avancement minimum
												autorise:</h6>
										</div>
										<div class="col-sm-7">
											<input type="text" name="taux" class="form-control"  id="taux" value="${config.taux}"></input>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<button type="submit" class="valider btn btn-primary m-b-0">Modifier</button>
						
					</form>
					</br></br>
				</div>

			</div>
			


			<jsp:include page="footer.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>