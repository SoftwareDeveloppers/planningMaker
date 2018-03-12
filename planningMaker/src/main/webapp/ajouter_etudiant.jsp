<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
	 <div class="pcoded-content">
                        <div class="pcoded-inner-content">

                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                <!-- Page-header start -->
                                    <div class="page-header card">
                                        <div class="row align-items-end">
                                            <div class="col-lg-8">
                                                <div class="page-header-title">
                                                    <i class="icofont icofont-file-code bg-c-blue"></i>
                                                    <div class="d-inline">
                                                        <h4>Ajouter étudiant</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="page-header-breadcrumb">
                                                   <ul class="breadcrumb-title">
                                                        <li class="breadcrumb-item">
                                                            <a href="fiche-de-voeux.html">
                                                                <i class="icofont icofont-home"></i>
                                                            </a>
                                                        </li>
                                                        <li class="breadcrumb-item"><a href="#!">Consultez</a>
                                                        </li>
                                                        <li class="breadcrumb-item"><a href="#!">Ajouter étudiant</a>
                                                        </li>
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
                                                 
                                                    <div class="card-header-right"><i
                                                            class="icofont icofont-spinner-alt-5"></i></div>

                                                    <div class="card-header-right">
                                                        <i class="icofont icofont-spinner-alt-5"></i>
                                                    </div>

                                                </div>
                                                <div class="card-block">
                                                 
                                                        <div class="row">
            												<div class="col-md-12">
               
	<div class="col-md-8">
        <div>
            
            <div class="box-content">
                <form role="form" method="post" action="#">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nom</label>
                        <input type="text" name="nom" class="form-control"  placeholder="Nom">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Prenom</label>
                        <input type="text" name="prenom" class="form-control" placeholder="Prenom">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Date de naissance</label>
                        <input type="date" name="dateN" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">lieu de naissance</label>
                        <input type="text" name="lieuN" class="form-control"placeholder="Lieu de naissance">
                    </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Address </label>
                        <input type="text" name="adresse" class="form-control" id="exampleInputEmail1" placeholder="Adresse">
                    </div>
                       <div class="form-group">
                        <label for="exampleInputEmail1">sexe</label>
                        <div class="controls">
                         <select name="sexe" class="form-control">
                            <option>homme</option>
                            <option>femme</option>
                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">spécialité</label>
                        <div class="controls">
                         <select name="specialite" class="form-control">
                            <option>GL</option>
                            <option>Rsd</option>
                            <option>Sic</option>
                            <option>Mid</option>
                         </select>
                    </div>                   
                     </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">telephone</label>
                        <input type="text" name="telephone" class="form-control"  pattern="[0][6|7|5][0-9]{8}" placeholder="telephone">
                    </div>
                        <div class="form-group">
                        <label for="exampleInputPassword1">id</label>
                        <input type="text" name="id" class="form-control"  placeholder="identifiant de la carte d'etudiant">
                    </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Email</label>
                        <input type="text" name="email" class="form-control"  placeholder="ex : nom@gmail.com">
                    </div>
                     <div class="form-group">
                        <label for="exampleInputPassword1">Mot de passe</label>
                        <input type="password" name="mdp" class="form-control"placeholder="mot de passe" >
                    </div>
 						<div class="form-group row">
                             <label class="col-sm-2"></label>
                               <div class="col-sm-10">
                                   <button type="submit" class="btn btn-primary m-b-0">Validez</button>
                               </div>
                         </div>              
                 </form>

            </div>
        </div>
    </div>
    </div>
      </div></div></div>
                                    <!-- Page body end -->
                                    <!--/*********************************************************************************************-->
                                </div>
                            </div>
                            <!-- Main-body end -->
                            <div id="styleSelector">

                            </div>
                        </div>
   
	<jsp:include page="footer.jsp"></jsp:include>