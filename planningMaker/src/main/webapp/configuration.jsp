<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:choose>
	<c:when
		test="${ empty sessionScope.idEnseignant  && empty sessionScope.idEtudiant && empty sessionScope.idAgent }">
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
											<h6 class="f-w-400 m-b-30">Nombre de choix de la fiche
												de voeux :</h6>
										</div>
										<div class="col-sm-7">
											<input type="text" name="nbrChoixFich" id="nbrChoix"
												value="0"></input>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">nombre de salle disponible :
											</h6>
										</div>
										<div class="col-sm-7">
											<input type="text" name="nbrSalle" id="nbrSalle" value="0"></input>
										</div>
									</div>



								</div>
							</div>
						</div>
						<br> <br>
						<button type="submit" class="valider btn btn-primary m-b-0">Modifier</button>
					</form>
				</div>

			</div>


			<jsp:include page="footer.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>