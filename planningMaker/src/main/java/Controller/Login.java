package Controller;

import java.awt.SecondaryLoop;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EtudiantDaoImpl;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("user");
		String pw = request.getParameter("pw");
		
		EtudiantDaoImpl etudiandao = new EtudiantDaoImpl();
		
		if (etudiandao.check(user, pw)){
			
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			response.sendRedirect("./AjouterFicheDeVoeux");
		}else
			
		this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}
	
}


