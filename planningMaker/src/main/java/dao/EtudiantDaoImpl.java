package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Enseignant;
import model.Etudiant;

public class EtudiantDaoImpl implements EtudiantDao {
	Connection conn=DbConnect.connect();

	public boolean create(Etudiant etudiant) {
		
		String sql = "INSERT INTO etudiant (email, mdp, nom, prenom, dateNaissance, specialite, moyenne, promotion, taux)"
				+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, '0');";
			PreparedStatement ps;
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setString(1, etudiant.getEmail());
				ps.setString(2, etudiant.getMdp());
				ps.setString(3, etudiant.getNom());
				ps.setString(4, etudiant.getPrenom());
				ps.setDate(5, etudiant.getDateNaissance());
				ps.setString(6, etudiant.getSpecialite());
				ps.setFloat(7, etudiant.getMoy());
				ps.setString(8, etudiant.getPromotion());
				ps.execute();
				conn.close();
				
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				
				return false;
			}
	}

	public boolean delete(Etudiant e) {
		
		boolean verif = false ;
		String sql = "DELETE FROM etudiant WHERE id=?";
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

	public boolean update(Etudiant etudiant) {
		
		String sql="UPDATE enseignant SET email='?', mdp = '?', nom='?', prenom = '?', dateNaissance = '?', specialite = '?', moyenne = '?',"
				+ " promotion = '?', taux='?' WHERE id = ?;";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, etudiant.getEmail());
			ps.setString(2, etudiant.getMdp());
			ps.setString(3, etudiant.getNom());
			ps.setString(4, etudiant.getPrenom());
			ps.setDate(5, etudiant.getDateNaissance());
			ps.setString(6, etudiant.getSpecialite());
			ps.setFloat(7, etudiant.getMoy());
			ps.setString(8, etudiant.getPromotion());
			ps.setFloat(9, etudiant.getTaux());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
		
	}

	public Etudiant findById(int id) {
		String sql = "Select * FROM enseignant WHERE id=?";
		PreparedStatement ps;
		ResultSet rs =null ;
		Etudiant etudiant=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if (rs.next()){
				etudiant = new Etudiant(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDate(6),
						rs.getString(7),
						rs.getString(8),
						rs.getFloat(9),
						rs.getFloat(10)
						);
				
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return etudiant;
	}

	public List<Etudiant> findAll() {
		String sql = "Select * FROM etudiant";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Etudiant> etudiants= new ArrayList<Etudiant>();
		Etudiant etudiant=null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				etudiant =  new Etudiant(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getDate(6),
						rs.getString(7),
						rs.getString(8),
						rs.getFloat(9),
						rs.getFloat(10)
						);
				
				etudiants.add(etudiant);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return etudiants;
	}

	public List<String> findSpecialite() {
		String sql = "Select DISTINCT specialite FROM etudiant";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<String> specialites= new ArrayList<String>();
		
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				
				specialites.add(rs.getString("specialite"));
				
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return specialites;
	}

}
