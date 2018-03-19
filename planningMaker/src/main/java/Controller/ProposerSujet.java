package Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import dao.SujetDaoImpl;
import model.Sujet;

public class ProposerSujet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ProposerSujet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//récupérer les var de session ( normalement f doget ? mmais 3maltha hna psk la méthode doPst -> formulaire ! reste a confirmé !!!)
		HttpSession session = request.getSession();
		Integer id =  (Integer) session.getAttribute("idEnseignant");
		
		//Récupérer les données du formulaire.
		
		String select  = request.getParameter("select");
		String titre = request.getParameter("titre");
		String desc = request.getParameter("desc");
		
		
		
		//Récupérer la date. 
		LocalDate localDate = LocalDate.now();
		Date date = Date.valueOf(localDate);
		 //System.out.println(DateTimeFormatter.ofPattern("yyy/MM/dd").format(localDate));
		
		//ici spécialité et id_enseignant var de session...
		Sujet sujet = new Sujet(0,titre, desc, select,date,id);
		
		SujetDaoImpl sujetdao = new SujetDaoImpl();
		
		boolean create = sujetdao.create(sujet);
		if (create) {
			this.getServletContext().getRequestDispatcher("/proposer_sujet.jsp").forward(request, response);

		}
		else
			System.out.println("err");
		
	}

}
