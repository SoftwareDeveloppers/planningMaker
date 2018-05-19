package Controller;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AgentDaoImpl;
import dao.EnseignantDaoImpl;
import dao.EtudiantDaoImpl;
import dao.FicheDeVoeuxDaoImpl;
import dao.SujetDaoImpl;
import model.AgentAdmin;
import model.Enseignant;
import model.Etudiant;
import model.Sujet;

/**
 * Servlet implementation class ModifierProfil
 */
public class ModifierProfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierProfil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		if(session.getAttribute("idEnseignant")!=null){
	    int idEnseignant = (Integer) session.getAttribute("idEnseignant");

		String email = request.getParameter("email");
	    EnseignantDaoImpl ens = new EnseignantDaoImpl();
	    if(session.getAttribute("emailEnseignant").equals(email)==false && ens.checkEmail(email)){
			out.print("mailExiste");
		} else {
	String nom = request.getParameter("nom");
	String prenom =request.getParameter("prenom");
	Date dateN = Date.valueOf(request.getParameter("dateN"));
	String adresse = request.getParameter("adresse");
	String specialite = request.getParameter("specialite");
	String grade =request.getParameter("grade");
	String telephone = request.getParameter("telephone");
	String sexe = request.getParameter("sexe");

	
    Enseignant e = ens.findById(idEnseignant);
    e.setNom(nom);
    e.setPrenom(prenom);
    e.setDateN(dateN);
    e.setAdresse(adresse);
    e.setEmail(email);
    e.setSpecialite(specialite);
    e.setSexe(sexe);
    e.setTelephone(telephone);
    e.setGrade(grade);
    if(ens.updateProfil(e)) {
    
    
	session.setAttribute("nom", e.getNom());
	session.setAttribute("prenom", e.getPrenom());
	session.setAttribute("sexe", e.getSexe());
	session.setAttribute("adresse", e.getAdresse());
	session.setAttribute("dateN", e.getDateN());
	session.setAttribute("telephone", e.getTelephone());
	session.setAttribute("emailEnseignant", e.getEmail());
	session.setAttribute("gradeEnseignant", e.getGrade());
	session.setAttribute("specEnseignant", e.getSpecialite());
	
	out.print("./profil.jsp");
    }
    
		}
	
	}else if(session.getAttribute("idEtudiant")!=null){
		
		 int idEtudiant= (Integer) session.getAttribute("idEtudiant");

			String email = request.getParameter("email");
		    EtudiantDaoImpl etu = new EtudiantDaoImpl();
		    if(session.getAttribute("emailEtudiant").equals(email)==false && etu.checkEmail(email)){
				out.print("mailExiste");
			} else {
		String nom = request.getParameter("nom");
		String prenom =request.getParameter("prenom");
		Date dateN = Date.valueOf(request.getParameter("dateN"));
		String specialite = request.getParameter("specialite");
		String promotion  =request.getParameter("promotion");
		float moyenne = Float.parseFloat(request.getParameter("moyenne"));
		float taux = Float.parseFloat(request.getParameter("taux"));

		
	    Etudiant e = etu.findById(idEtudiant);
	    e.setNom(nom);
	    e.setPrenom(prenom);
	    e.setDateNaissance(dateN);
	    e.setEmail(email);
	    e.setSpecialite(specialite);
	    e.setPromotion(promotion);
	    e.setMoy(moyenne);
	    e.setTaux(taux);
	  
	    if(etu.updateProfil(e)) {
	    
	    
			session.setAttribute("nom", e.getNom());
			session.setAttribute("prenom", e.getPrenom());
			session.setAttribute("dateEtudiant", e.getDateNaissance());
			session.setAttribute("emailEtudiant", e.getEmail());
			session.setAttribute("moyEtudiant", e.getMoy());
			session.setAttribute("specEtudiant", e.getSpecialite());
			session.setAttribute("promEtudiant", e.getPromotion());
			session.setAttribute("tauxEtudiant", e.getTaux());
		
		out.print("./profilEtudiant.jsp");
	    }
	    
			}
		
	}else{
		 int idAgent= (Integer) session.getAttribute("idAgent");

			String email = request.getParameter("email");
		    AgentDaoImpl ag = new AgentDaoImpl();
		    if(session.getAttribute("emailAgent").equals(email)==false && ag.checkEmail(email)){
				out.print("mailExiste");
			} else {
		String nom = request.getParameter("nom");
		String prenom =request.getParameter("prenom");

		
	    AgentAdmin e = ag.findById(idAgent);
	    e.setNom(nom);
	    e.setPrenom(prenom);
	    e.setEmail(email);
	   
	  
	    if(ag.updateProfil(e)) {
	    
	    
			session.setAttribute("nom", e.getNom());
			session.setAttribute("prenom", e.getPrenom());
			session.setAttribute("emailAgent", e.getEmail());

		
		out.print("./profilAgent.jsp");
	    }
	    
			}
		
		
		
		
	}
}
}