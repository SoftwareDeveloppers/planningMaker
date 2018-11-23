package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import dao.ConfigurationDaoImpl;
import dao.SujetDaoImpl;
import model.Sujet;

public class ProposerSujet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Integer id= 0;
	int nombre_de_sujet =-1;
	int limite = 0;
	
   
    public ProposerSujet() {
        super();   
        ConfigurationDaoImpl con = new ConfigurationDaoImpl();
    	limite = con.findNbrSujetPropose();
    }
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		id =  (Integer) session.getAttribute("idEnseignant");
		SujetDaoImpl sujetdao = new SujetDaoImpl();
		SujetDaoImpl findSujet = new SujetDaoImpl();
		
		ArrayList<Sujet> sujets = new ArrayList<Sujet>();
		sujets = (ArrayList<Sujet>) findSujet.findByIdEnseignant(id);

		request.setAttribute("sujets", sujets);
		nombre_de_sujet = sujetdao.nombreDeSujet(id);
		nombre_de_sujet = limite - nombre_de_sujet;
		request.setAttribute("nombre_de_sujet", nombre_de_sujet);
		this.getServletContext().getRequestDispatcher("/proposer_sujet.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		//R�cup�rer les donn�es du formulaire.
		String select  = request.getParameter("select");
		String titre = request.getParameter("titre");
		String desc = request.getParameter("desc");
		
		//R�cup�rer la date. 
		LocalDate localDate = LocalDate.now();
		Date date = Date.valueOf(localDate);
		 //System.out.println(DateTimeFormatter.ofPattern("yyy/MM/dd").format(localDate));
		
		Sujet sujet = new Sujet(0,titre, desc, select,date,id);

		SujetDaoImpl sujetdao2 = new SujetDaoImpl();
		SujetDaoImpl sujetdao = new SujetDaoImpl();
		
		nombre_de_sujet = sujetdao.nombreDeSujet(id);
		
		if( nombre_de_sujet < limite) 
		{
			boolean create = sujetdao2.create(sujet);
			System.out.println(create);
			if (create) {
				
				out.print("ok");
			}
			else 
				out.print("err");		
		}
		else 
			out.print("pasok");	
		
		
	}

}
