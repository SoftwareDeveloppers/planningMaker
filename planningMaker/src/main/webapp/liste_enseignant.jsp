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
                                                    <h4>Liste des encadreurs</h4>
                                                    <span>trouver dans cette page la liste des encadreurs disponible </span>
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
                                                    <li class="breadcrumb-item"><a href="#!">Liste enseignant</a>
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
                                                                <th>Nom et prenom</th>
                                                                <th>Date de naissance</th>
                                                                <th>email</th>
                                                                <th>specialité</th>
                                                                <th>grade</th>
                                                                <th>telephone</th>
                                                                <th>Action</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:forEach items="${ enseignants }" var="enseignant">
                                                                <tr>
                                                                    <td>${ enseignant.getNom()} ${ enseignant.getPrenom()}</td>
                                                                     <td>${ enseignant.getDateN()}</td>
                                                                     <td>${ enseignant.getEmail()}</td>
                                                                    <td>${ enseignant.getSpecialite()}</td>
                                                                    <td>${ enseignant.getGrade()}</td>
                                                                    <td>${ enseignant.getTelephone()}</td>
                                                                    <td>
																			<button type="button" class="btn btn-warning btn-modifier waves-effect" 
																			data-toggle="modal" data-target="#modif-Modal${enseignant.getId()}">Modifier</button>
																			
																			<button type="button" class="btn btn-danger waves-effect" 
																			data-toggle="modal" data-target="#supp-Modal${enseignant.getId()}">Supprimer</button>
																	</td>
                                                                   <div class="modal fade" id="supp-Modal${enseignant.getId()}" tabindex="-1" role="dialog">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h4 class="modal-title">Confirmer</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            			<span aria-hidden="true">&times;</span>
                                                       					 </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                
                                                                                <p><h6>Vous etes sur de vouloir supprimer ${ enseignant.getNom()} ${ enseignant.getPrenom()}?</h6></p>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-default waves-effect " data-dismiss="modal">Close</button>
                                                                                <form role="form" method="post" action="EnseignantControler">
                                                                                <input type="hidden" name="ensSupp" value="${enseignant.getId()}">
                                                                                <button type="submit"
                                                                                class="btn btn-primary waves-effect waves-light ">Oui, Supprimer</button>
                                                                                </form>
                                                                                
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                
                                                                
                                                                <div class="modal fade" id="modif-Modal${enseignant.getId()}" tabindex="-1" role="dialog">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h4 class="modal-title">Modifier</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            			<span aria-hidden="true">&times;</span>
                                                       					 </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                
            <form role="form" method="post" action="EnseignantControler">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nom</label>
                        <input type="text" name="nom" id="nom" class="form-control"  value="${enseignant.getNom()}">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Prenom</label>
                        <input type="text" name="prenom" id="prenom" class="form-control" value="${enseignant.getPrenom()}">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Date de naissance</label>
                        <input type="date" name="dateN" id="dateN" class="form-control" value="${enseignant.getDateN()}">
                    </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Adresse </label>
                        <input type="text" name="adresse" id="adresse"  class="form-control" value="${enseignant.getAdresse()}">
                    </div>
                       <div class="form-group">
                        <label for="exampleInputEmail1">sexe</label>
                        <div class="controls">
                         <select name="sexe" id="sexe" class="form-control">
                            <option>homme</option>
                            <option>femme</option>
                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">spécialité</label>
                        <div class="controls">
                         <select name="specialite" id="specialite" class="form-control">
                            <option>GL</option>
                            <option>Rsd</option>
                            <option>Sic</option>
                            <option>Mid</option>
                         </select>
                    </div>                   
                     </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">telephone</label>
                        <input type="text" name="telephone" id="telephone" class="form-control"  pattern="[0][6|7|5][0-9]{8}" value="${enseignant.getTelephone()}">
                    </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Grade</label>
                        <input type="text" name="grade" id="grade" class="form-control" value="${enseignant.getGrade()}">
                    </div>
                     <div class="form-group">
                        <label for="exampleInputPassword1">Email</label>
                        <input type="text" name="email" id="email" class="form-control"  value="${enseignant.getEmail()}">
                    </div>
                     <div class="form-group">
                        <label for="exampleInputPassword1">Mot de passe</label>
                        <input type="password" name="mdp" id="mdp"  class="form-control" value="${enseignant.getMdp()}" >
                        <input type="hidden" name="ensModif" value="${enseignant.getId()}">
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