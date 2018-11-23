package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AffectationDaoImpl;
import dao.ConfigurationDao;
import dao.ConfigurationDaoImpl;
import dao.FicheDeVoeuxDao;
import dao.FicheDeVoeuxDaoImpl;
import dao.SalleDaoImpl;
import dao.SoutenanceDao;
import dao.SoutenanceDaoImpl;

public class Configuration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Configuration() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		if (session.getAttribute("idAgent") != null) {
			model.Configuration config = new model.Configuration() ; 
			config = new ConfigurationDaoImpl().find();
			
			
			
			//envois des valeurs de configuration courante
			request.setAttribute("config",config);

			this.getServletContext().getRequestDispatcher("/configuration.jsp").forward(request, response);
		} else
			this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			
			int nbrChoixSujet = Integer.parseInt(request.getParameter("nbrChoixSujet")) ;
			int nbrSujetProposer = Integer.parseInt(request.getParameter("nbrSujetProposer")) ;
			int nbrJuree = Integer.parseInt(request.getParameter("nbrJuree")) ;
			float taux = Float.parseFloat(request.getParameter("taux")) ;
			
			model.Configuration config = new model.Configuration() ; 
			config = new ConfigurationDaoImpl().find();
			
			/*comparer l'encienne valeurs avec la nouvelle valeur :
			 * si on change le nombre de choix par fiche de veux la bdd va se metre a jour 
			 * les fiche seron tous suprimer insi que les qffectqtion et le planning .
			 * */
			if(config.getNbrChoixSujet() != nbrChoixSujet ) {
				
				FicheDeVoeuxDao ficheVoeux = new FicheDeVoeuxDaoImpl() ;
				ficheVoeux.deleteAll() ;
				AffectationDaoImpl af = new AffectationDaoImpl() ;
				af.delete() ;
				SoutenanceDaoImpl soutimpl = new SoutenanceDaoImpl();
				SalleDaoImpl s  = new SalleDaoImpl();
				soutimpl.delete();
				s.libererLesSalles();
				
			}
			if(config.getNbrJuree() != nbrJuree ) {
				
				SoutenanceDao soutenance = new SoutenanceDaoImpl() ; 
				soutenance.delete() ;
				
			}
			
			model.Configuration c = new model.Configuration() ; 
			c.setNbrChoixSujet(nbrChoixSujet);
			c.setNbrJuree(nbrJuree);
			c.setNbrSujetProposer(nbrSujetProposer);
			c.setTaux(taux);
			
			ConfigurationDao config1 = new ConfigurationDaoImpl() ;
			config1.update(c) ;
		
			doGet(request, response);
	}

}
