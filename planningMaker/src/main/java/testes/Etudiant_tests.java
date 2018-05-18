package testes;

import static org.junit.Assert.*;

import org.junit.Test;

import com.mysql.fabric.xmlrpc.base.Data;

import dao.DbConnect;
import dao.EtudiantDaoImpl;
import model.Etudiant;

public class Etudiant_tests {

	
	

	@Test
	public void findbyidTest() {
		EtudiantDaoImpl eimpl = new EtudiantDaoImpl();
		assertNotNull(DbConnect.connect());
		Etudiant r = new Etudiant(700, "redq", "Redq", "inteex@gmqil", "56352", new java.sql.Date(1995,1,1), "rr", "www", 14f, 25f, 0, 0);
		
		assertEquals(true, 	eimpl.create(r));
		assertEquals(r.getSpecialite(), 	eimpl.findBySpecialite("rr"));

	}
}
