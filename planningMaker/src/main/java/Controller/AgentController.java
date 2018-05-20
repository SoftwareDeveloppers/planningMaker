package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AgentDaoImpl;
import dao.EnseignantDaoImpl;
import dao.EtudiantDaoImpl;
import model.AgentAdmin;
import model.Etudiant;

public class AgentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AgentController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("Liste") != null) {

			AgentDaoImpl agentDao = new AgentDaoImpl();
			ArrayList<AgentAdmin> agents = new ArrayList<AgentAdmin>();
			agents = (ArrayList<AgentAdmin>) agentDao.findAll();
			request.setAttribute("agents", agents);
			this.getServletContext().getRequestDispatcher("/liste_agentAdmin.jsp").forward(request, response);

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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String idAgent = request.getParameter("agSupp");
		String idAgModif = request.getParameter("modif");	
		AgentDaoImpl agentcheckEmail = new AgentDaoImpl();
if(idAgModif == null && idAgent == null){

		if (agentcheckEmail.checkEmail(email)) {
			out.print("mailExiste");
		} else {

			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String mdp = request.getParameter("mdp");
			
			AgentDaoImpl agentDao = new AgentDaoImpl();
			AgentAdmin agent = new AgentAdmin(0, nom, prenom, email, mdp);
			

			if (agentDao.create(agent)) {
				out.print("AgentController?Liste=agents");

			} else
				out.print("./ajouter_agentAdmin.jsp");

		}
}else if(idAgModif!=null){
	
				AgentDaoImpl agentDao = new AgentDaoImpl();
				String nom = request.getParameter("nom");
				
				String prenom = request.getParameter("prenom");
				String mdp = request.getParameter("mdp");
				int id=agentDao.findId(email);
				

				AgentAdmin a= agentDao.findById(id);
				a.setNom(nom);
				a.setPrenom(prenom);
				a.setEmail(email);
				a.setMdp(mdp);
				session.setAttribute("nom", a.getNom());
				session.setAttribute("prenom", a.getPrenom());
				session.setAttribute("emailAgent", a.getEmail());
				
				if (agentDao.update(a)) {
				
					response.sendRedirect("AgentController?Liste=agents");

				} else 	response.sendRedirect("AgentController");
	          }else{
	        	 AgentDaoImpl agent = new AgentDaoImpl();
	  			int idag = Integer.parseInt(idAgent);
	  			AgentAdmin a=agent.findById(idag);
	  			if(agent.delete(a)){
				
					response.sendRedirect("AgentController?Liste=agents");

				} else 	response.sendRedirect("AgentController"); 
	        	
	          }
}

	

}
