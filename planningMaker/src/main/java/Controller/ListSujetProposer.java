package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SujetDaoImpl;
import model.Sujet;

/**
 * Servlet implementation class ListSujetProposer
 */
public class ListSujetProposer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListSujetProposer() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		int id =  (Integer) session.getAttribute("idEnseignant");

		SujetDaoImpl findSujet = new SujetDaoImpl();
		
		ArrayList<Sujet> sujets = new ArrayList<Sujet>();
		sujets = (ArrayList<Sujet>) findSujet.findByIdEnseignant(id);
		request.setAttribute("sujets", sujets);

		this.getServletContext().getRequestDispatcher("/listSuejtProposer.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
