package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EtudiantDaoImpl;
import model.Etudiant;

/**
 * Servlet implementation class Etudiant
 */
public class EtudiantController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("idEtudiant") == null) {

			response.sendRedirect("Login");

		} else {
			int idEtudiant = (Integer) session.getAttribute("idEtudiant");
			EtudiantDaoImpl e = new EtudiantDaoImpl();
			request.setAttribute("etudiant", e.findById(idEtudiant));
			this.getServletContext().getRequestDispatcher("/accueil_etudiant.jsp").forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		EtudiantDaoImpl etudiantchekEmail = new EtudiantDaoImpl();

		if (etudiantchekEmail.checkEmail(email)) {
			out.print("mailExiste");
		} else {

			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");

			String mdp = request.getParameter("mdp");
			Date dateN = Date.valueOf(request.getParameter("dateN"));
			String specialite = request.getParameter("specialite");
			String promotion = request.getParameter("promotion");
			float moy = Float.parseFloat(request.getParameter("moy"));

			// float taux = Float.parseFloat(request.getParameter("taux"));
			// pas encore ajouter a la bdd et au model !
			/*
			 * String lieuN = request.getParameter("lieuN"); String adresse =
			 * request.getParameter("adresse"); String sexe =
			 * request.getParameter("sexe"); String
			 * telephone=request.getParameter("telephone"); String
			 * idcarteEtudiant = request.getParameter("id");
			 */
			
				EtudiantDaoImpl etudiantDao = new EtudiantDaoImpl();
				Etudiant etudaint = new Etudiant(0, nom, prenom, email, mdp, dateN, specialite, promotion, moy, null);

				if (etudiantDao.create(etudaint)) {
					out.print("./liste-etudiant.jsp");

				} else
					out.print("./ajouter_etudiant.jsp");

			
		}
	}

}
