
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600"
	rel="stylesheet">

<link rel="stylesheet" href="schudle/css/style.css">
<!-- Resource style -->
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
										<h4>Liste des encadreurs</h4>
										<span>trouver dans cette page la liste des encadreurs
											disponible </span>
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
												enseignant</a></li>
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
											<div class="cd-schedule loading">
												<div class="timeline">
													<ul>
														<li><span>09:00</span></li>
														<li><span>09:30</span></li>
														<li><span>10:00</span></li>
														<li><span>10:30</span></li>
														<li><span>11:00</span></li>
														<li><span>11:30</span></li>
														<li><span>12:00</span></li>
														<li><span>12:30</span></li>
														<li><span>13:00</span></li>
														<li><span>13:30</span></li>
														<li><span>14:00</span></li>
														<li><span>14:30</span></li>
														<li><span>15:00</span></li>
														<li><span>15:30</span></li>
														<li><span>16:00</span></li>
														<li><span>16:30</span></li>
														<li><span>17:00</span></li>
														<li><span>17:30</span></li>
														<li><span>18:00</span></li>
													</ul>
												</div>
												<!-- .timeline -->

												<div class="events">
													<ul>
														<li class="events-group">
															<div class="top-info">
																<span>Monday</span>
															</div>

															<ul>
																<li class="single-event" data-start="10:00"
																	data-end="12:00" data-content="event-abs-circuit"
																	data-event="event-1"><a href="#0"> <em
																		class="event-name">Abs Circuit</em>
																</a></li>



																<li class="single-event" data-start="14:00"
																	data-end="16:00" data-content="event-yoga-1"
																	data-event="event-3"><a href="#0"> <em
																		class="event-name">Yoga Level 1</em>
																</a></li>
															</ul>
														</li>

														<li class="events-group">
															<div class="top-info">
																<span>Tuesday</span>
															</div>

															<ul>


																<li class="single-event" data-start="14:00"
																	data-end="16:00" data-conten it="event-yoga-1"
																	data-event="event-3"><a href="#0"> <em
																		class="event-name">Yoga Level 1</em>
																</a></li>
															</ul>
														</li>

														<li class="events-group">
															<div class="top-info">
																<span>Wednesday</span>
															</div>

															<ul>


																<li class="single-event" data-start="12:00"
																	data-end="13:45" data-content="event-rowing-workout"
																	data-event="event-2"><a href="#0"> <em
																		class="event-name">Rowing Workout</em>
																</a></li>

																<li class="single-event" data-start="14:00"
																	data-end="16:00" data-content="event-yoga-1"
																	data-event="event-3"><a href="#0"> <em
																		class="event-name">Yoga Level 1</em>
																</a></li>
															</ul>
														</li>

														<li class="events-group">
															<div class="top-info">
																<span>Thursday</span>
															</div>

															<ul>
																<li class="single-event" data-start="10:00"
																	data-end="12:00" data-content="event-abs-circuit"
																	data-event="event-1"><a href="#0"> <em
																		class="event-name">Rowing Workout</em>
																</a></li>
																<li class="single-event" data-start="14:00"
																	data-end="16:00" data-content="event-rowing-workout"
																	data-event="event-2"><a href="#0"> <em
																		class="event-name">Rowing Workout</em>
																</a></li>
															</ul>
														</li>

														<li class="events-group">
															<div class="top-info">
																<span>Friday</span>
															</div>

															<ul>
																<li class="single-event" data-start="10:00"
																	data-end="12:00" data-content="event-rowing-workout"
																	data-event="event-2"><a href="#0"> <em
																		class="event-name">Rowing Workout</em>
																</a></li>

																<li class="single-event" data-start="12:30"
																	data-end="14:00" data-content="event-abs-circuit"
																	data-event="event-1"><a href="#0"> <em
																		class="event-name">Abs Circuit</em>
																</a></li>

																<li class="single-event" data-start="14:00"
																	data-end="16:00" data-content="event-yoga-1"
																	data-event="event-3"><a href="#0"> <em
																		class="event-name">Yoga Level 1</em>
																</a></li>
															</ul>
														</li>
													</ul>
												</div>

												<div class="event-modal">
													<header class="header">
														<div class="content">
															<span class="event-date"></span>
															<h3 class="event-name"></h3>
														</div>

														<div class="header-bg"></div>
													</header>

													<div class="body">
														<div class="event-info"><br><br><br>hhhhhhhh</div>
														<div class="body-bg"></div>
													</div>

													<a href="#0" class="close">Close</a>
												</div>

												<div class="cover-layer"></div>
											</div>
											<!-- .cd-schedule -->

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
<script src="schudle/js/modernizr.js"></script>
<script>
	if (!window.jQuery)
		document
				.write('<script src="schudle/js/jquery-3.0.0.min.js"><\/script>');
</script>
<script src="schudle/js/main.js"></script>
<!-- Resource jQuery -->