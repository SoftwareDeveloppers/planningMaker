package testes;

import static org.junit.Assert.*;

import java.sql.Date;

import org.junit.Test;

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
	
}
