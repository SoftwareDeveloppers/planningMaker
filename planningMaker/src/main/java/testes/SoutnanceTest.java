package testes;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Arrays;

import org.junit.Test;

import com.mysql.fabric.xmlrpc.base.Array;

import dao.SoutenanceDaoImpl;
import model.SoutenanceJoin;

public class SoutnanceTest {
	
	@Test
	public void JoinSoutnanceTest() {
		
		ArrayList<String> jures = new ArrayList<String>();
		jures.add("Yasmin");
		jures.add("Forest");
		jures.add("Sadye");
		jures.add("Chad");
		jures.add("Messabihi");
		
		SoutenanceDaoImpl soutimpl = new SoutenanceDaoImpl();
		
	for (int i = 1; i <= soutimpl.jointureSoutnance().size(); i++) {
		System.out.println(soutimpl.jointureSoutnance().get(i-1).getJurenom());

		if (i % 5 == 0 && i!=1) 
			System.out.println(soutimpl.jointureSoutnance().get(i-1).getTitreSujets()+"\n_______________________________________"+soutimpl.jointureSoutnance().size());
	}

		
	}

}
