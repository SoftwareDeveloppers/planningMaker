package dao;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Remarque;
import model.Sujet;

public class RemarqueDaoImpl {
	
	
	public boolean create(Remarque r) {
		Connection conn=DbConnect.connect();
		
	String sql = "INSERT INTO remarque (id_Etudiant, titre , contenu, date)"
				+ " VALUES (?, ?, ?,NOW());";
	
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, r.getId_Etudiant());
			ps.setString(2, r.getTitre());
			ps.setString(3, r.getContenu());
			System.out.println("execute");
			ps.execute();
			conn.close();
			System.out.println("remarque add");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public List<Remarque>  findByIdEtudiant(int id) {
		Connection conn=DbConnect.connect();

		String sql = "Select * FROM remarque WHERE id_Etudiant=? ORDER BY date DESC";
		PreparedStatement ps;
		ResultSet rs = null ;
		List<Remarque> remarques= new ArrayList<Remarque>();
		Remarque remarque=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while (rs.next()){
				remarque = new Remarque(
						rs.getInt("id"),
						rs.getInt("id_Etudiant"),
						rs.getString("titre"), 
						rs.getString("contenu"),
						rs.getDate("date")
						);
				remarques.add(remarque);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return remarques;
	}


}
