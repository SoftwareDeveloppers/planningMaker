package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AgentDaoImpl;
import dao.EnseignantDaoImpl;
import dao.EtudiantDaoImpl;
import model.Etudiant;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
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
			session.setAttribute("nomEtudiant", etudiant.getNom());
			session.setAttribute("prenomEtudiant", etudiant.getPrenom());
			session.setAttribute("dateEtudiant", etudiant.getDateNaissance());
			session.setAttribute("emailEtudiant", etudiant.getEmail());
			session.setAttribute("moyEtudiant", etudiant.getMoy());
			session.setAttribute("specEtudiant", etudiant.getSpecialite());
			session.setAttribute("promEtudiant", etudiant.getPromotion());
			session.setAttribute("tauxEtudiant", etudiant.getTaux());
			
			out.print("./EtudiantController");
		} else {
			EnseignantDaoImpl enseignantdao = new EnseignantDaoImpl();
			int idEnseignant = enseignantdao.check(user, pw);
			if (idEnseignant != 0) {
				HttpSession session = request.getSession();
				session.setAttribute("idEnseignant", idEnseignant);
				out.print("./acceuil_enseignant.jsp");	
			} else{
				AgentDaoImpl agentdao = new AgentDaoImpl();
				int idAgent = agentdao.check(user, pw);
				if (idAgent != 0) {
					HttpSession session = request.getSession();
					session.setAttribute("idAgent", idAgent);
					out.print("./accueil_agentAdmin.jsp");	
				} else
					out.print("erreur");

			}

		}

	}

}
