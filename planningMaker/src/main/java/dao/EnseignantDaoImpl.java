package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Enseignant;


public class EnseignantDaoImpl implements EnseignantDao {
		
	public boolean create(Enseignant enseignant) {
		Connection conn=DbConnect.connect();

	String sql = "INSERT INTO enseignant (nom , prenom , dateN , adresse ,email , mdp , specialite , grade , telephone , sexe )"
				+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, enseignant.getNom());
			ps.setString(2, enseignant.getPrenom());
			ps.setDate(3, enseignant.getDateN());
			ps.setString(4, enseignant.getAdresse());
			ps.setString(5, enseignant.getEmail());
			ps.setString(6, enseignant.getMdp());
			ps.setString(7, enseignant.getSpecialite());
			ps.setString(8, enseignant.getGrade());
			ps.setString(9, enseignant.getTelephone());
			ps.setString(10, enseignant.getSexe());
			
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
		Connection conn=DbConnect.connect();

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
		Connection conn=DbConnect.connect();

		String sql="UPDATE enseignant SET nom = '?', prenom = '?', dateN = '?', adresse = '?',email = '?', mdp = '?', specialite = '?', grade = '?', telephone = '?', sexe = '?'"
				+ " WHERE id = ?;";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, enseignant.getNom());
			ps.setString(2, enseignant.getPrenom());
			ps.setDate(3, enseignant.getDateN());
			ps.setString(4, enseignant.getAdresse());
			ps.setString(5, enseignant.getEmail());
			ps.setString(6, enseignant.getMdp());
			ps.setString(7, enseignant.getSpecialite());
			ps.setString(8, enseignant.getGrade());
			ps.setString(9, enseignant.getTelephone());
			ps.setString(10, enseignant.getSexe());
			ps.setInt(11, enseignant.getId());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public Enseignant findById(int id) {
		Connection conn=DbConnect.connect();

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
						rs.getString(3) ,
						rs.getDate(4),
						rs.getString(5), 
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11)
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
		Connection conn=DbConnect.connect();

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				enseignant = new Enseignant(
						rs.getInt(1),
						rs.getString(2), 
						rs.getString(3) ,
						rs.getDate(4),
						rs.getString(5), 
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9),
						rs.getString(10),
						rs.getString(11)
						);
				
				enseignants.add(enseignant);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return enseignants;

	}
	public Enseignant check(String user, String mdp) {
		Connection conn=DbConnect.connect();

		String sql = "SELECT * FROM enseignant WHERE email=?";
		int result =0 ;
		PreparedStatement ps;
		ResultSet rs =null ;
		Enseignant enseignant=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1 , user);
			rs=ps.executeQuery();
			if (rs.next()){
				if (mdp.equals(rs.getString("mdp")))
					enseignant = new Enseignant(rs.getInt(1),rs.getString(2), rs.getString(3) ,rs.getDate(4), rs.getString(5), 
							rs.getString(6),  rs.getString(7), rs.getString(8), rs.getString(9),rs.getString(10),  rs.getString(11));
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		
		return enseignant;
	}

	public boolean checkEmail(String email) {		
		Connection conn=DbConnect.connect();
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM enseignant WHERE email=?";
		boolean result = false;
		PreparedStatement ps;
		ResultSet rs = null;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next()) {
				result = true;

			}
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return result;
	}

	
}
