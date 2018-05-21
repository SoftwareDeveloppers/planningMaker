package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;


import model.Affectation;
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

	public List<Soutenance> findAll() {
		String sql = "Select * FROM soutenance";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Soutenance> soutenances= new ArrayList<Soutenance>();
		Soutenance soutenance = null ;
		Connection conn=DbConnect.connect();

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				soutenance = new Soutenance(
						rs.getInt(1),
						rs.getDate(2), 
						rs.getTime(3),
						rs.getInt(4),
						rs.getInt(5)
						);
				
				soutenances.add(soutenance);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return soutenances;

	}
	

}
