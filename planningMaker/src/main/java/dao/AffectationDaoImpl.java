package dao;

import java.sql.Connection;
import java.sql.SQLException;


import com.mysql.jdbc.PreparedStatement;

import model.Affectation;

public class AffectationDaoImpl implements AffectationDao{
	

	public boolean create(Affectation e) {
		Connection conn = DbConnect.connect();
		
		String sql = "INSERT INTO affectation (id, id_Etudiant, id_Sujet) VALUES (?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, e.getId());
			ps.setInt(2, e.getId_Etudiant());
			ps.setInt(3, e.getId_Sujet());
			
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException r) {
			r.printStackTrace();

			return false;
		}
	}

}
