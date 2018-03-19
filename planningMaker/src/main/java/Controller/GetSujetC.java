package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SujetDaoImpl;
import model.Sujet;

/**
 * Servlet implementation class GetSujetC
 */
public class GetSujetC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSujetC() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String specialite= "informatique";
		Sujet sujet = new Sujet() ;
		sujet.setSpecialite(specialite);
		
		SujetDaoImpl sujetdao = new SujetDaoImpl();
		List<Sujet> sujets = sujetdao.findBySpecialite(sujet);
		request.setAttribute("sujets", sujets);*/
		
		this.getServletContext().getRequestDispatcher("/sujetDesSpecialite.jsp").forward(request, response);
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(GetSujet.c <= 5)
		{
			int id = Integer.parseInt(request.getParameter("suj"));
			System.out.println(id);
			//Sujet sujet = new Sujet() ;

			//SujetDaoImpl sujetdao = new SujetDaoImpl();
			SujetDaoImpl sujetdao1 = new SujetDaoImpl();
			
			Sujet suj = sujetdao1.findById(id);
			//List<Sujet> sujets = sujetdao.findBySpecialite(suj);
			//GetSujet.sujets.remove(suj);
			request.setAttribute("sujets", GetSujet.sujets);
			request.setAttribute("c", GetSujet.c);
			GetSujet.c++;
			
			this.getServletContext().getRequestDispatcher("/sujetDesSpecialite.jsp").forward(request, response);
		}
	}

}
