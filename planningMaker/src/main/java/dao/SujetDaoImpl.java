package dao;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Sujet;

public class SujetDaoImpl implements SujetDao{
	
	
	public boolean create(Sujet sujet) {
		Connection conn=DbConnect.connect();
		
	String sql = "INSERT INTO sujet (titre , contenu, specialite, date_creation, id_Enseignant)"
				+ " VALUES (?, ?, ?, ?, ?);";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, sujet.getTitre());
			ps.setString(2, sujet.getContenu());
			ps.setString(3, sujet.getSpecialite());
			ps.setDate(4, sujet.getDateCreation());
			ps.setInt(5, sujet.getId_enseignant());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	public boolean delete(Sujet sujet) {
		Connection conn=DbConnect.connect();
		
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
		Connection conn=DbConnect.connect();
		String sql="UPDATE sujet SET titre = '?', contenu = '?', specialite = '?', creation = '?', Id_Enseignant = '?'"
				+ " WHERE id = ?;";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, sujet.getTitre());
			ps.setString(2, sujet.getContenu());
			ps.setString(3, sujet.getSpecialite());
			ps.setDate(4, sujet.getDateCreation());
			ps.setInt(5, sujet.getId_enseignant());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public Sujet findById(int id) {
		Connection conn=DbConnect.connect();
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
						rs.getInt("id"),
						rs.getString("titre"), 
						rs.getString("contenu"), 
						rs.getString("specialite"), 
						rs.getDate("date_creation"),
						rs.getInt("id_Enseignant")
						);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return sujet;
	}
	
	public List<Sujet>  findByIdEnseignant(int id) {
		Connection conn=DbConnect.connect();

		String sql = "Select * FROM sujet WHERE id_Enseignant=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		List<Sujet> sujets= new ArrayList<Sujet>();
		Sujet sujet=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while (rs.next()){
				sujet = new Sujet(
						rs.getInt("id"),
						rs.getString("titre"), 
						rs.getString("contenu"), 
						rs.getString("specialite"), 
						rs.getDate("date_creation"),
						rs.getInt("id_Enseignant")
						);
				sujets.add(sujet);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return sujets;
	}

	public List<Sujet> findAll() {
		Connection conn=DbConnect.connect();
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
						rs.getInt("id"),
						rs.getString("titre"), 
						rs.getString("contenu"), 
						rs.getString("specialite"), 
						rs.getDate("date_creation"),
						rs.getInt("id_Enseignant")
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

		Connection conn=DbConnect.connect();
		String sql = "Select * FROM sujet WHERE specialite=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		List<Sujet> sujets= new ArrayList<Sujet>();
		Sujet sujet = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, s.getSpecialite());
			rs=ps.executeQuery();
			
			while (rs.next()){
				sujet = new Sujet(
						rs.getInt("id"),
						rs.getString("titre"), 
						rs.getString("contenu"), 
						rs.getString("specialite"), 
						rs.getDate("date_creation"),
						rs.getInt("id_Enseignant")
						);
				
				sujets.add(sujet);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return sujets;
	}
	
	public int nombreDeSujet(int idEnseignant) {
		Connection conn=DbConnect.connect();
		String sql = "Select count(id) FROM sujet WHERE id_Enseignant=?";
		PreparedStatement ps;
		ResultSet rs =null ;
		int nombreDeSujet = 0;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idEnseignant);
			rs=ps.executeQuery();
			if (rs.next()) {
				nombreDeSujet = rs.getInt("count(id)");	
			}
			conn.close();
	
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
		return nombreDeSujet;	
	}

}
