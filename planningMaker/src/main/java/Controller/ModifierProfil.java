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

import dao.EnseignantDaoImpl;
import dao.FicheDeVoeuxDaoImpl;
import dao.SujetDaoImpl;
import model.Enseignant;
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
	}

}
