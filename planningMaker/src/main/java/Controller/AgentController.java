package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AgentDaoImpl;
import model.AgentAdmin;

public class AgentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AgentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
