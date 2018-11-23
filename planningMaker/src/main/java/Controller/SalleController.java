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
import javax.validation.ReportAsSingleViolation;

import dao.EnseignantDaoImpl;
import dao.SalleDaoImpl;
import model.Enseignant;
import model.Salle;

/**
 * Servlet implementation class SalleController
 */
public class SalleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String list = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SalleController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		if (session.getAttribute("idAgent") != null) {

				SalleDaoImpl salleDao = new SalleDaoImpl();
				List<Salle> salles = new ArrayList<Salle>();
				salles = salleDao.findAll();
				request.setAttribute("salles", salles);
				this.getServletContext().getRequestDispatcher("/liste_salles.jsp").forward(request, response);
			
		}else 
		response.sendRedirect("Deconnexion");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();

		String numSalle = request.getParameter("numSalle");

		SalleDaoImpl salleDao = new SalleDaoImpl();

		String idSalle = request.getParameter("salleSupp");
		String idSalleModif = request.getParameter("salleModif");

		if (idSalle != null) {
			SalleDaoImpl salleDaoDelete = new SalleDaoImpl();
			int idSl = Integer.parseInt(idSalle);
			Salle sl = new Salle(idSl, 0, "");
			salleDaoDelete.delete(sl);
			list = "abc";
			this.doGet(request, response);
		}

		else if (idSalleModif != null) {
			int idSalleMod = Integer.parseInt(idSalleModif);
			System.out.println("salle modif int " + idSalleMod);
			String numSal = request.getParameter("numSalle");
			String etatS = request.getParameter("etat");
			int etat = Integer.parseInt(etatS);

			SalleDaoImpl salleDaoUpd = new SalleDaoImpl();
			Salle salle = new Salle(idSalleMod, etat, numSal);
			if (salleDaoUpd.update(salle)) {
				System.out.println("salle updatedd");
				list = "abc";
				this.doGet(request, response);
			} else {
				System.out.println("salle Not updatedd");
			}
		}

		else if (salleDao.findByNum(numSalle)) {
			out.print("salleExist");
		} else {

			String nom = request.getParameter("numSalle");

			Salle salle = new Salle(0, 1, numSalle);
			if (salleDao.create(salle)) {
				out.print("./SalleController?Liste=salles");

			} else
				out.print("./ajouter_salle.jsp");

		}

	}

}