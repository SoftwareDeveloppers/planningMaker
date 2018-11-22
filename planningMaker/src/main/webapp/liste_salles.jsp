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
                                                    <h4>Liste des salles</h4>
                                                    <span>trouver dans cette page la liste des salles </span>
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
                                                    <li class="breadcrumb-item"><a href="#!">Consulter</a>
                                                    </li>
                                                    <li class="breadcrumb-item"><a href="#!">Liste des salles</a>
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
                                                                <th>Id</th>
                                                                <th>Numero de salle</th>
                                                                <th>Etat</th>
                                                                <th>Action</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:forEach items="${ salles }" var="salle">
                                                                <tr>
                                                                    <td>${ salle.getId()}</td>
                                                                     <td>${ salle.getNumSalle()}</td>
                                                                     <td>${ salle.getEtat()}</td>
                                                                    <td>
																			<button type="button" class="btn btn-warning btn-modifier waves-effect" 
																			data-toggle="modal" data-target="#modif-Modal${salle.getId()}">Modifier</button>
																			
																			<button type="button" class="btn btn-danger waves-effect" 
																			data-toggle="modal" data-target="#supp-Modal${salle.getId()}">Supprimer</button>
																	</td>
                                                                   <div class="modal fade" id="supp-Modal${salle.getId()}" tabindex="-1" role="dialog">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h4 class="modal-title">Confirmer</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            			<span aria-hidden="true">&times;</span>
                                                       					 </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                
                                                                                <p><h6>Vous etes sur de vouloir supprimer la salle ${ salle.getNumSalle()} ?</h6></p>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-default waves-effect " data-dismiss="modal">Close</button>
                                                                                <form role="form" method="post" action="SalleController">
                                                                                <input type="hidden" name="salleSupp" value="${salle.getId()}">
                                                                                <button type="submit"
                                                                                class="btn btn-primary waves-effect waves-light ">Oui, Supprimer</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                
                                                                
                                                                <div class="modal fade" id="modif-Modal${salle.getId()}" tabindex="-1" role="dialog">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h4 class="modal-title">Modifier</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            			<span aria-hidden="true">&times;</span>
                                                       					 </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                
            <form role="form" method="post" action="SalleController">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Numero de salle</label>
                        <input type="text" name="numSalle" id="numSalle" class="form-control" value="${salle.getNumSalle()}">
                    </div>
                    <div class="form-group">
                        
                        <c:if test="${salle.getEtat()==1}">
                        	<input type="radio" class="form-control" name="etat" value="1" checked>Libre<br>
                        	<input type="radio" class="form-control" name="etat" value="0">Occupe
                        </c:if>
                        
                        <c:if test="${salle.getEtat()==0}">
                        	<input type="radio" class="form-control" name="etat" value="1">Libre<br>
                        	<input type="radio" class="form-control" name="etat" value="0" checked>Occupe
                        </c:if>
                        
                    </div>
                    
                     <div class="form-group">
                        <input type="hidden" name="salleModif" value="${salle.getId()}">
                    </div>             
                                                                                
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-default waves-effect " data-dismiss="modal">Close</button>
                                                                                
                                                                                
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