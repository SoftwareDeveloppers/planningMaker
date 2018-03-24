package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EnseignantDaoImpl;
import dao.EtudiantDaoImpl;

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
		int idEtudiant = etudiandao.check(user, pw);
		if (idEtudiant != 0) {

			HttpSession session = request.getSession();
			session.setAttribute("idEtudiant", idEtudiant);
			out.print("./AjouterFicheDeVoeux");
		} else {
			EnseignantDaoImpl enseignantdao = new EnseignantDaoImpl();
			int idEnseignant = enseignantdao.check(user, pw);
			if (idEnseignant != 0) {
				HttpSession session = request.getSession();
				session.setAttribute("idEnseignant", idEnseignant);
				out.print("./acceuil_enseignant.jsp");	
			} else
				out.print("erreur");

		}

	}

}
