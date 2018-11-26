package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Fonction.Act;
import Fonction.ActModel;
import dao.AgentDaoImpl;
import dao.EnseignantDaoImpl;
import dao.EtudiantDaoImpl;
import model.AgentAdmin;
import model.Enseignant;
import model.Etudiant;


/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean active;
	
	SystemMacAddress sysMac = new SystemMacAddress();
	String mcadr = sysMac.getSystemMac();

	Act actvtr = new Act();


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActModel a = actvtr.findByMcadr(mcadr);
		if(a == null)
		{
			active = false;
			this.getServletContext().getRequestDispatcher("/Activation.jsp").forward(request, response);
		}
		else {
			active = true;
			this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(active == false)
		{
			actvtr.create(mcadr);
			this.doGet(request, response);
		}
		else {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		//Récupérer les données.
		String user  = request.getParameter("user");
		String pw = request.getParameter("mdp");
		
		EtudiantDaoImpl etudiandao = new EtudiantDaoImpl();
		Etudiant etudiant = etudiandao.check(user, pw);
		if (etudiant != null) {

			HttpSession session = request.getSession();
			session.setAttribute("idEtudiant", etudiant.getId());
			session.setAttribute("nom", etudiant.getNom());
			session.setAttribute("prenom", etudiant.getPrenom());
			session.setAttribute("dateEtudiant", etudiant.getDateNaissance());
			session.setAttribute("emailEtudiant", etudiant.getEmail());
			session.setAttribute("moyEtudiant", etudiant.getMoy());
			session.setAttribute("specEtudiant", etudiant.getSpecialite());
			session.setAttribute("promEtudiant", etudiant.getPromotion());
			session.setAttribute("tauxEtudiant", etudiant.getTaux());
			
			out.print("./EtudiantController");
			
		} else {
			EnseignantDaoImpl enseignantdao = new EnseignantDaoImpl();
			Enseignant enseignant = enseignantdao.check(user, pw);
			if (enseignant != null) {
				HttpSession session = request.getSession();
				session.setAttribute("idEnseignant", enseignant.getId());
				session.setAttribute("nom", enseignant.getNom());
				session.setAttribute("prenom", enseignant.getPrenom());
				session.setAttribute("dateN", enseignant.getDateN());
				session.setAttribute("sexe", enseignant.getSexe());
				session.setAttribute("adresse", enseignant.getAdresse());
				session.setAttribute("telephone", enseignant.getTelephone());
				session.setAttribute("emailEnseignant", enseignant.getEmail());
				session.setAttribute("gradeEnseignant", enseignant.getGrade());
				session.setAttribute("specEnseignant", enseignant.getSpecialite());
				
				
				out.print("./acceuil_enseignant.jsp");	
				
			} else{
				AgentDaoImpl agentdao = new AgentDaoImpl();
				AgentAdmin agent = agentdao.check(user, pw);
				if (agent != null) {
					HttpSession session = request.getSession();
					session.setAttribute("idAgent", agent.getId());
					session.setAttribute("nom", agent.getNom());
					session.setAttribute("prenom", agent.getPrenom());
					session.setAttribute("emailAgent", agent.getEmail());
					
					out.print("./accueil_agentAdmin.jsp");	
					
				} else
					out.print("erreur");

			}

		}

	}
	}
}
