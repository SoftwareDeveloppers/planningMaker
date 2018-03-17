package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Enseignant;


public class EnseignantDaoImpl implements EnseignantDao {
		Connection conn=DbConnect.connect();
		
	public boolean create(Enseignant enseignant) {
		
	String sql = "INSERT INTO enseignant (nom, prenom, email, mdp, specialite, grade)"
				+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, enseignant.getNom());
			ps.setString(2, enseignant.getPrenom());
			ps.setString(3, enseignant.getEmail());
			ps.setString(4, enseignant.getMdp());
			ps.setString(5, enseignant.getSpecialite());
			ps.setString(6, enseignant.getGrade());
			
			
			//ps.setInt(7, enseignant.geti);
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public boolean delete(Enseignant e) {
		
		boolean verif = false ;
		String sql = "DELETE FROM enseignant WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, e.getId());
			
			verif=ps.execute();
			conn.close();
			
			
		} catch (SQLException ex) {
			ex.printStackTrace();	
		}
		
		return verif ;
	}

	public boolean update(Enseignant enseignant) {
		String sql="UPDATE enseignant SET nom = '?', prenom = '?', email = '?', mdp = '?', specialite = '?', grade = '?'"
				+ " WHERE id = ?;";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, enseignant.getNom());
			ps.setString(2, enseignant.getPrenom());
			ps.setString(3, enseignant.getEmail());
			ps.setString(4, enseignant.getMdp());
			ps.setString(5, enseignant.getSpecialite());
			ps.setString(6, enseignant.getGrade());
			ps.setInt(7, enseignant.getId());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public Enseignant findById(int id) {
		String sql = "Select * FROM enseignant WHERE id=?";
		PreparedStatement ps;
		ResultSet rs =null ;
		Enseignant enseignant=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if (rs.next()){
				enseignant = new Enseignant(
						rs.getInt(1),
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5),  
						rs.getString(6), 
						rs.getString(7)
						);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return enseignant;
	}

	public List<Enseignant> findAll() {
		String sql = "Select * FROM enseignant";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Enseignant> enseignants= new ArrayList<Enseignant>();
		Enseignant enseignant=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				enseignant = new Enseignant(
						rs.getInt(1),
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5),  
						rs.getString(6), 
						rs.getString(7)
						);
				
				enseignants.add(enseignant);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return enseignants;

	}

}
