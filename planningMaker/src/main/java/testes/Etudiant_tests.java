package testes;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import Controller.AffectationSujet;
import dao.EtudiantDaoImpl;
import model.Etudiant;

public class Etudiant_tests {
	
	@Test
	public void FindTest(){
		EtudiantDaoImpl eimpl = new EtudiantDaoImpl();
		Date dateN = Date.valueOf("1995-10-05");
		Etudiant expected = new Etudiant(1, "Benmansour", "Hichem", "cartwright.coleman@gmail.com", "123456", dateN, "SIC", "2014", 13f, 0f, 1, 0);
		Etudiant result = eimpl.findById(1);
		
		//Remaraue : il faut redifinir la methodes equals de Etudiant
		assertEquals(expected, 	result);

		
	}
	
	@Test
	public void loginTest() {
		
		EtudiantDaoImpl eimpl = new EtudiantDaoImpl();
		
		
		
		String motdepasse = "123456";
		String email ="cartwright.coleman@gmail.com";
		 
		Etudiant result = eimpl.check(email, motdepasse);
		Etudiant  expected = eimpl.findById(1) ;
		
		assertEquals(expected, result);
		
		
	}
	
	@Test
	public void chekmailTest() {
		EtudiantDaoImpl eimpl = new EtudiantDaoImpl();
		
		ArrayList<String> emails = new ArrayList<String>() ; 
		emails.add("cartwright.coleman@gmail.com");
		emails.add("jaiden02@yahoo.com");
		emails.add("umurphy@yahoo.com");
		emails.add("gfay@hotmail.com");
		emails.add("kristina03@hotmail.com");
		emails.add("mayra05@gmail.com");

		for (String value : emails) {
			assertEquals(true, eimpl.checkEmail(value));
		}
	}
	

	
	
	@Test
	public void UpdateTest() {
		
		EtudiantDaoImpl eimpl = new EtudiantDaoImpl();
		Date dateN = Date.valueOf("1995-10-05");
		
		assertEquals( "Hichem" , eimpl.findById(1).getPrenom()); 
		
		Etudiant expected = new Etudiant(1, "Benmansour", "zinou"
				, "cartwright.coleman@gmail.com", "123456"
				, dateN, "SIC", "2014"
				, 13f, 0f, 1,
				0);

		assertEquals( true , eimpl.update(expected)); 
		
		assertEquals( "zinou" , eimpl.findById(1).getPrenom()); 

	}
	
	@After
	public void afterUpdate() {
		
		EtudiantDaoImpl eimpl = new EtudiantDaoImpl();
		Date dateN = Date.valueOf("1995-10-05");
		
		Etudiant expected = new Etudiant(1, "Benmansour", "Hichem", "cartwright.coleman@gmail.com", "123456", dateN, "SIC", "2014", 13f, 0f, 1, 0);
		
		assertEquals( true , eimpl.update(expected)); 

	}
	
}
