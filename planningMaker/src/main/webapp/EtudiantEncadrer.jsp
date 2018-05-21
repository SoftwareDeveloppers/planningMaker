<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="header.jsp"></jsp:include>
<style>
.slidecontainer {
    width: 100%;
}

.slider {
    -webkit-appearance: none;
    width: 100%;
    height: 25px;
    background: #d3d3d3;
    outline: none;
    opacity: 0.7;
    -webkit-transition: .2s;
    transition: opacity .2s;
}

.slider:hover {
    opacity: 1;
}

.slider::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 25px;
    height: 25px;
    background: #4CAF50;
    cursor: pointer;
}

.slider::-moz-range-thumb {
    width: 25px;
    height: 25px;
    background: #4CAF50;
    cursor: pointer;
}
</style>
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
                                                    <h4>Etudiants Encadrer</h4>
                                                    <span>les étudiants que vous encadrer </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="page-header-breadcrumb">
                                                <ul class="breadcrumb-title">
                                                    <li class="breadcrumb-item">
                                                        <a href="index.html">
                                                            <i class="icofont icofont-home"></i>
                                                        </a>
                                                    </li>
                                                    
                                                    <li class="breadcrumb-item"><a href="#!">Etudiants Encadrer</a>
                                                    </li>
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
                                                    <div class="card-header-right"><i
                                                            class="icofont icofont-spinner-alt-5"></i></div>
                                                </div>
                                                <div class="card-block">
                                                    <div class="dt-responsive table-responsive">
                                                        <table id="simpletable"
                                                               class="table table-striped table-bordered nowrap">
                                                            <thead>
                                                            <tr>
                                                            	<th>Etudiant</th>
                                                                <th>Sujet</th>
                                                                <th>Taux d'avancement</th>
                                                                <th>Edit</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                      <c:if test="${ !affectations.isEmpty() }">
                                                        <c:forEach items="${ affectations }" var="affect">
                                                          <c:forEach items="${ etudiants }" var="etud">
                                                           <c:forEach items="${ sujets }" var="suj">
                                                           <c:if test="${affect.id_Etudiant == etud.id }">
                                                           <c:if test="${affect.id_Sujet == suj.id }">
															<tr>
																<td>${ etud.nom} ${ etud.prenom}</td>								
																<td>${suj.titre}</td>
																<td style="width:300px">
														<div class="progress-box">
                                                            
                                                            <div class="progress d-inline-block" style="width:100%">
                                                                <div class="progress-bar bg-c-green" style="width:${etud.taux}%"><label>${etud.taux}%</label></div>
                                                            </div>
                                                        </div>
																</td>	
																	<td>
																			<button type="button" class="btn btn-warning btn-modifier waves-effect" 
																			data-toggle="modal" data-target="#Modal${etud.id}" onclick="taux('${etud.id}')">Action</button>
																			<button type="button" class="btn btn-primary btn-modifier waves-effect" 
																			data-toggle="modal" data-target="#ModalRem${etud.id}">Remarque</button>
																	</td>
                                                                   <div class="modal fade" id="Modal${etud.id}" tabindex="-1" role="dialog">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h4 class="modal-title">Action</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            			<span aria-hidden="true">&times;</span>
                                                       					 </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                            ${ etud.nom} ${ etud.prenom}
                                                                                <div class="slidecontainer">
  																				<input type="range" min="0" max="100" value="${etud.taux}" class="slider" id="myRange${etud.id}">
  																				<p>Taux d'avancement: <span id="demo${etud.id}"></span>%</p>
																				</div>
                                                                                
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-default waves-effect " data-dismiss="modal">Close</button>
                                                                                <form role="form" method="post" action="AffectationSujet">
                                                                                <input type="hidden" id="updateTaux${etud.id}" name="updateTaux">
                                                                                <input type="hidden" name="tauxEtud" value="${etud.id}">
                                                                                <button type="submit"
                                                                                class="btn btn-primary waves-effect waves-light ">Mettre a jour</button>
                                                                                </form>    
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                             <!-- -------------------------------------------------------------------------- -->
                                                                <div class="modal fade" id="ModalRem${etud.id}" tabindex="-1" role="dialog">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h4 class="modal-title">Ajouter une remarque</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            			<span aria-hidden="true">&times;</span>
                                                       					 </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                            
                                                                            <form role="form" method="post" action="AffectationSujet">
                                                                            <label><h5>Objet : </h5></label>
                                                                            		<input type="text" name="titreRem" placeholder="Objet de la remarque">
                                                                            		</br></br>
                                                                            		<h5>Contenu: </h5></br>
                                                                            		<textarea name="textarea" rows="8" cols="50"></textarea>
                                                                            		<input type="hidden" name="idEtudRem" value="${etud.id}">
                                                                            		
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-default waves-effect " data-dismiss="modal">Close</button>
                                                                                <button type="submit"
                                                                                class="btn btn-primary waves-effect waves-light ">Envoyer</button>
                                                                                </form>    
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                              <!-- -------------------------------------------------------------------------- -->
															</tr>
															</c:if>
															</c:if>
															</c:forEach>
														  </c:forEach>
														</c:forEach>
														</c:if>
														
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
    <script>
            function taux(v){
				var slider = document.getElementById("myRange"+v);
				var output = document.getElementById("demo"+v);
				var taux = document.getElementById("updateTaux"+v);
				output.innerHTML = slider.value;
																	
				slider.oninput = function() {
				output.innerHTML = this.value;
				taux.value = this.value;
			}}
	</script>
  <jsp:include page="footer.jsp"></jsp:include>