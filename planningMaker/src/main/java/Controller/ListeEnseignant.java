package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EnseignantDaoImpl;
import model.Enseignant;


public class ListeEnseignant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ListeEnseignant() {
        super();  
    }
    


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EnseignantDaoImpl enseignant = new EnseignantDaoImpl();
		ArrayList<Enseignant> enseignants= new ArrayList<Enseignant>();
		enseignants = (ArrayList<Enseignant>) enseignant.findAll();
		request.setAttribute("enseignants", enseignants);
		this.getServletContext().getRequestDispatcher("/liste_enseignant.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
