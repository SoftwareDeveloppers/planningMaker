package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Enseignant;
import model.Sujet;

public class SujetDaoImpl implements SujetDao{
	Connection conn=DbConnect.connect();
	
	public boolean create(Sujet sujet) {
		
	String sql = "INSERT INTO sujet (contenu, creation, titre , specialite)"
				+ " VALUES (?, ?, ?, ?, ?);";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, sujet.getContenu());
			ps.setDate(2, sujet.getDateCreation());
			ps.setString(3, sujet.getTitre());
			ps.setString(4, sujet.getSpecialite());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}
	public boolean delete(Sujet sujet) {
		
		boolean verif = false ;
		String sql = "DELETE FROM sujet WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, sujet.getId());
			
			verif=ps.execute();
			conn.close();
			
		} catch (SQLException ex) {
			ex.printStackTrace();	
		}
		
		return verif ;
	}

	public boolean update(Sujet sujet) {
		String sql="UPDATE sujet SET contenu = '?', creation = '?', titre = '?', specialite = '?'"
				+ " WHERE id = ?;";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, sujet.getContenu());
			ps.setDate(2, sujet.getDateCreation());
			ps.setString(3, sujet.getTitre());
			ps.setString(4, sujet.getSpecialite());
			ps.setInt(5, sujet.getId());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public Sujet findById(int id) {
		String sql = "Select * FROM sujet WHERE id=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		Sujet sujet = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if (rs.next()){
				sujet = new Sujet(
						rs.getInt(1),
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getDate(5)
						);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return sujet;
	}

	public List<Sujet> findAll() {
		String sql = "Select * FROM sujet";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Sujet> sujets= new ArrayList<Sujet>();
		Sujet sujet=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				sujet = new Sujet(
						rs.getInt(1),
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4),
						rs.getDate(5)
						);
				
				sujets.add(sujet);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return sujets;

	}
	public List<Sujet> findBySpecialite(Sujet s) {
		
		String sql = "Select * FROM sujet WHERE specialite=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		List<Sujet> sujets= new ArrayList<Sujet>();
		Sujet sujet = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, sujet.getSpecialite());
			rs=ps.executeQuery();
			
			while (rs.next()){
				sujet = new Sujet(
						rs.getInt(1),
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getDate(5)
						);
				
				sujets.add(sujet);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return sujets;
	}

}
