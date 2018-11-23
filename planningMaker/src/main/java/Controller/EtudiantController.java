package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AffectationDaoImpl;
import dao.EnseignantDaoImpl;
import dao.EtudiantDaoImpl;
import dao.RemarqueDaoImpl;
import dao.SujetDaoImpl;
import model.Enseignant;
import model.Etudiant;
import model.Remarque;

/**
 * Servlet implementation class Etudiant
 */
public class EtudiantController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessionAg = request.getSession();
		
		if (request.getParameter("Liste") != null && sessionAg.getAttribute("idAgent") != null  ) {
			
			EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
			ArrayList<Etudiant> etudiants = new ArrayList<Etudiant>();
			etudiants = (ArrayList<Etudiant>) etudiant.findAll();
			request.setAttribute("etudiants", etudiants);
			this.getServletContext().getRequestDispatcher("/liste-etudiant.jsp").forward(request, response);
			
			
		} else {

			HttpSession session = request.getSession();
			if (session.getAttribute("idEtudiant") == null ) {

				response.sendRedirect("Deconnexion");

			} else {
				int idEtudiant = (Integer) session.getAttribute("idEtudiant");
				EtudiantDaoImpl e = new EtudiantDaoImpl();
				SujetDaoImpl sujDao = new SujetDaoImpl();
				AffectationDaoImpl affDao = new AffectationDaoImpl();
				RemarqueDaoImpl remDao = new RemarqueDaoImpl();
				List<Remarque> rems = new ArrayList<Remarque>();
				rems = remDao.findByIdEtudiant(idEtudiant);
				
				request.setAttribute("remarques", rems);
				request.setAttribute("sujet", sujDao.findById(affDao.findByEtudiant(idEtudiant)));
				request.setAttribute("etudiant", e.findById(idEtudiant));
				this.getServletContext().getRequestDispatcher("/accueil_etudiant.jsp").forward(request, response);

			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		EtudiantDaoImpl etudiantchekEmail = new EtudiantDaoImpl();

		String idEtudiant = request.getParameter("etudSupp");
		String idEtuModif = request.getParameter("etudModif");
		
		if(idEtudiant != null) {
			EtudiantDaoImpl etudiantDao = new EtudiantDaoImpl();
			int idEtu = Integer.parseInt(idEtudiant);
			if(etudiantDao.delete(idEtu)){
				response.sendRedirect("EtudiantController?Liste=etudiants");

			} else
				response.sendRedirect("EtudiantController");
		
		}
		
		else if(idEtuModif != null) {
			int idEtuMod = Integer.parseInt(idEtuModif);
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			Date dateN = Date.valueOf(request.getParameter("dateN"));
			String specialite = request.getParameter("specialite");
			Float moyenne =Float.parseFloat(request.getParameter("moyenne"));
			String promotion = request.getParameter("promotion");
			String mdp = request.getParameter("mdp");
			int idFiche = Integer.parseInt(request.getParameter("idFiche"));
			int idEns = Integer.parseInt(request.getParameter("idEns"));
			Float taux = Float.parseFloat(request.getParameter("taux"));
			
			EtudiantDaoImpl etudiantDao = new EtudiantDaoImpl();
			Etudiant etudiant = new Etudiant(idEtuMod, nom, prenom,email, mdp,dateN,specialite, promotion, moyenne,taux,idFiche,idEns);
			if (etudiantDao.update(etudiant)) {
				response.sendRedirect("EtudiantController?Liste=etudiants");

			} else
				response.sendRedirect("EtudiantController");
		
		}else if(etudiantchekEmail.checkEmail(email)) {
			out.print("mailExiste");
		} else {

			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String mdp = request.getParameter("mdp");
			Date dateN = Date.valueOf(request.getParameter("dateN"));
			String specialite = request.getParameter("specialite");
			String promotion = request.getParameter("promotion");
			float moy = Float.parseFloat(request.getParameter("moy"));

			
			EtudiantDaoImpl etudiantDao = new EtudiantDaoImpl();
			Etudiant etudaint = new Etudiant(0, nom, prenom, email, mdp, dateN, specialite, promotion, moy, null, 0, 0);

			if (etudiantDao.create(etudaint)) {
				out.print("./EtudiantController?Liste=etudiants");

			} else
				out.print("./ajouter_etudiant.jsp");

		}
	}

}
