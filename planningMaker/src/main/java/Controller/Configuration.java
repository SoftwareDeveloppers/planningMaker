package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ConfigurationDao;
import dao.ConfigurationDaoImpl;

public class Configuration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Configuration() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		if (session.getAttribute("idAgent") != null) {
			
			
			request.setAttribute("config",new ConfigurationDaoImpl().find());

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
			
			model.Configuration c = new model.Configuration() ; 
			c.setNbrChoixSujet(nbrChoixSujet);
			c.setNbrJuree(nbrJuree);
			c.setNbrSujetProposer(nbrSujetProposer);
			c.setTaux(taux);
			
			ConfigurationDao config = new ConfigurationDaoImpl() ;
			config.update(c) ;
		
		doGet(request, response);
	}

}
