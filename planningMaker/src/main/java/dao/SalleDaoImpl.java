package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Salle;

public class SalleDaoImpl implements SalleDao{
	Connection conn=DbConnect.connect();

	public boolean create(Salle salle) {
		
	String sql = "INSERT INTO salle (etat)"
				+ " VALUES (?);";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setBoolean(1, salle.getEtat());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public boolean delete(Salle salle) {
		
		boolean verif = false ;
		String sql = "DELETE FROM salle WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, salle.getId());
			verif=ps.execute();
			conn.close();
			
		} catch (SQLException ex) {
			ex.printStackTrace();	
		}
		
		return verif ;
	}

	public boolean update(Salle salle) {
		String sql="UPDATE salle SET etat = '?', id_Soutenance = '?'"
				+ " WHERE id = ?;";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setBoolean(1, salle.getEtat());
			ps.setInt(2, salle.getId_Soutenance());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public Salle findById(int id) {
		String sql = "Select * FROM salle WHERE id=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		Salle salle = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if (rs.next()){
				salle = new Salle(
						rs.getInt(1),
						rs.getBoolean(2), 
						rs.getInt(3)
						);
			}	
			conn.close();
				
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return salle;
	}

	public List<Salle> findAll() {
		String sql = "Select * FROM salle";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Salle> salles= new ArrayList<Salle>();
		Salle salle=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				salle = new Salle(
						rs.getInt(1),
						rs.getBoolean(2), 
						rs.getInt(3)
						);
				
				salles.add(salle);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return salles;
	}

}
