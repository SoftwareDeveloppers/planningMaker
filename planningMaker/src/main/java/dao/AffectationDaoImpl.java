package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Affectation;
import model.Sujet;

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
	
	public Affectation findBySujet(int id) {
		Connection conn=DbConnect.connect();

		String sql = "Select * FROM affectation WHERE id_Sujet=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		Affectation affectation = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while (rs.next()){
				affectation = new Affectation(
						rs.getInt("id"),
						rs.getInt("id_Etudiant"), 
						rs.getInt("id_Sujet")
						);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return affectation;
	}

}
