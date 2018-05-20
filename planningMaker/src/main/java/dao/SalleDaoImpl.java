package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Salle;

public class SalleDaoImpl implements SalleDao{

	public boolean create(Salle salle) {
		Connection conn=DbConnect.connect();
	String sql = "INSERT INTO salle (etat)"
				+ " VALUES (?);";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, salle.getEtat());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public boolean delete(Salle salle) {

		Connection conn=DbConnect.connect();
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
		Connection conn=DbConnect.connect();
		String sql="UPDATE salle SET etat = '?'"
				+ " WHERE id = ?;";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, salle.getEtat());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public Salle findById(int id) {
		Connection conn=DbConnect.connect();
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
						rs.getInt(2)
						);
			}	
			conn.close();
				
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return salle;
	}

	public List<Salle> findAll() {
		Connection conn=DbConnect.connect();
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
						rs.getInt(2)
						);
				
				salles.add(salle);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return salles;
	}
	
	public Salle findByEtat(int etat) {
		Connection conn=DbConnect.connect();
		String sql = "Select * FROM salle WHERE etat=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		Salle salle = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, etat);
			rs=ps.executeQuery();
			if (rs.next()){
				salle = new Salle(
						rs.getInt(1),
						rs.getInt(2)
						);
			}	
			conn.close();
				
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return salle;
	}
	
	public boolean updateEtat(int etat, int id) {
		Connection conn=DbConnect.connect();
		String sql="UPDATE salle SET etat = ? WHERE id = ?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, etat);
			ps.setInt(2, id);
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}
	
	public boolean libererLesSalles() {
		Connection conn=DbConnect.connect();
		String sql="UPDATE salle SET etat = 1";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.execute();
			conn.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

}
