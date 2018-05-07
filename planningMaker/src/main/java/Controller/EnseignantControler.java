package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AgentDaoImpl;
import dao.EnseignantDaoImpl;
import dao.EtudiantDaoImpl;
import model.Enseignant;
import model.Etudiant;


/**
 * Servlet implementation class EnseignantConttroler
 */
public class EnseignantControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		if (request.getParameter("Liste") != null) {
			
			EnseignantDaoImpl enseignant = new EnseignantDaoImpl();
			List<Enseignant> enseignants = new ArrayList<Enseignant>();
			enseignants = enseignant.findAll();
			request.setAttribute("enseignants", enseignants);
			this.getServletContext().getRequestDispatcher("/liste_enseignant.jsp").forward(request, response);
			
			
		} else {

			HttpSession session = request.getSession();
			if (session.getAttribute("idAgent") == null) {

				response.sendRedirect("Login");

			} else {
				int idAgent = (Integer) session.getAttribute("idAgent");
				AgentDaoImpl e = new AgentDaoImpl();
				request.setAttribute("agent", e.findById(idAgent));
				this.getServletContext().getRequestDispatcher("/accueil_agentAdmin.jsp").forward(request, response);

			}
		}
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		System.out.println(email);
		EnseignantDaoImpl enseignantchekEmail = new EnseignantDaoImpl();
		
		String idEnseignant = request.getParameter("ensSupp");
		String idEnsModif = request.getParameter("ensModif");
		
		if(idEnseignant != null) {
			EnseignantDaoImpl enseignantdelete = new EnseignantDaoImpl();
			int idEns = Integer.parseInt(idEnseignant);
			enseignantdelete.delete(idEns);
		}
		
		else if(idEnsModif != null) {
			int idEnsMod = Integer.parseInt(idEnsModif);
			System.out.println("ens modif int" + idEnsMod);
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			Date dateN = Date.valueOf(request.getParameter("dateN"));
			String adresse = request.getParameter("adresse");
			String specialite = request.getParameter("specialite");
			String grade = request.getParameter("grade");
			String sexe = request.getParameter("sexe");
			String telephone = request.getParameter("telephone");
			String mdp = request.getParameter("mdp");
			
			EnseignantDaoImpl enseignantModifDao = new EnseignantDaoImpl();
			Enseignant enseignant = new Enseignant(idEnsMod, nom, prenom, dateN, adresse, email, mdp, specialite, grade, telephone, sexe);
			if (enseignantModifDao.update(enseignant)) {
				out.print("./liste_enseignant.jsp");

			}
		}
		
		else if (enseignantchekEmail.checkEmail(email)) {
			out.print("mailExiste");
		} else {

			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			Date dateN = Date.valueOf(request.getParameter("dateN"));
			String adresse = request.getParameter("adresse");
			String specialite = request.getParameter("specialite");
			String grade = request.getParameter("grade");
			String sexe = request.getParameter("sexe");
			String telephone = request.getParameter("telephone");
			String mdp = request.getParameter("mdp");
			
			EnseignantDaoImpl enseignantDao = new EnseignantDaoImpl();
			Enseignant enseignant = new Enseignant(0, nom, prenom, dateN, adresse, email, mdp, specialite, grade, telephone, sexe);
			if (enseignantDao.create(enseignant)) {
				out.print("./liste_enseignant.jsp");

			} else
				out.print("./ajouter_enseignant.jsp");

		}
	
	}

}
