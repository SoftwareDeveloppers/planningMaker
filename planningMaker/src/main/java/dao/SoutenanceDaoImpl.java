package dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import model.Soutenance;

public class SoutenanceDaoImpl implements SoutenanceDao{

	public boolean create(Soutenance s) {
		Connection conn=DbConnect.connect();
		String sql = "INSERT INTO soutenance (date,	heure, 	id_Salle, id_Etudiant)"
					+ " VALUES (?,?,?,?);";
			PreparedStatement ps;
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setDate(1, s.getDate());
				ps.setTime(2, s.getHeure());
				ps.setInt(3, s.getId_salle());
				ps.setInt(4, s.getId_Etudiant());
				ps.execute();
				conn.close();
				
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				
				return false;
			}
		
		
	}

	public boolean delete(Soutenance s) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean update(Soutenance s) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
