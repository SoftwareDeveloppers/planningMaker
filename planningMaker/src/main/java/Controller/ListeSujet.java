package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EtudiantDaoImpl;
import dao.SujetDaoImpl;
import model.Sujet;

public class ListeSujet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListeSujet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
		List<String> Specilaite = etudiant.findSpecialite();
		request.setAttribute("specialite", Specilaite);
		
		this.getServletContext().getRequestDispatcher("/liste_sujet.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("assiste")!= null) {
			
			
		}else {
		
		String specialite = request.getParameter("spec");
		Sujet sujet = new Sujet() ;
		sujet.setSpecialite(specialite);

		SujetDaoImpl sujetdao = new SujetDaoImpl();
		List<Sujet> sujets = sujetdao.findBySpecialite(sujet);
		request.setAttribute("sujets", sujets);

		this.getServletContext().getRequestDispatcher("/listeSujet.jsp").forward(request, response);
		}
	}

}
