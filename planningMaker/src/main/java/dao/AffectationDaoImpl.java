package dao;

import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Affectation;
import model.Enseignant;
import model.affectationJoin;

public class AffectationDaoImpl implements AffectationDao{
	

	public boolean create(Affectation e) {
		Connection conn = DbConnect.connect();
		
		String sql = "INSERT INTO affectation (id, id_Etudiant, id_Sujet) VALUES (?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, e.getId());
			ps.setInt(2, e.getId_Etudiant());
			ps.setInt(3, e.getId_Sujet());
			
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException r) {
			r.printStackTrace();

			return false;
		}
	}
	
	
	
	public List<Affectation> findAll() {
		String sql = "Select * FROM affectation";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Affectation> affectations= new ArrayList<Affectation>();
		Affectation affectation = null ;
		Connection conn=DbConnect.connect();

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				affectation = new Affectation(
						rs.getInt(1),
						rs.getInt(2), 
						rs.getInt(3) 
						);
				
				affectations.add(affectation);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return affectations;

	}

	public ArrayList<affectationJoin> jointureAffectaction() {
		Connection conn = DbConnect.connect();
		String sql = "Select sujet.titre,etudiant.nom,etudiant.prenom,etudiant.specialite,enseignant.nom,enseignant.prenom"
				+ " FROM sujet,affectation,enseignant,etudiant "
				+ "where  sujet.id=affectation.id_Sujet and "
				+ "affectation.id_Etudiant=etudiant.id and "
				+ "affectation.id = enseignant.id";
		PreparedStatement ps;
		ResultSet rs =null ;
		ArrayList<affectationJoin> affectations= new ArrayList<affectationJoin>();
		affectationJoin affectation = null ;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				affectation = new affectationJoin(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6));
				affectations.add(affectation);
			}	
			conn.close();
	} catch (SQLException ex) {
		ex.printStackTrace();
		
	}
	
	return affectations;
	}
	public Affectation findBySujet(int id) {
		Connection conn=DbConnect.connect();

		String sql = "Select * FROM affectation WHERE id_Sujet=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		Affectation affectation = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while (rs.next()){
				affectation = new Affectation(
						rs.getInt("id"),
						rs.getInt("id_Etudiant"), 
						rs.getInt("id_Sujet")
						);
			}	
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return affectation;
	}
	
	public int nombreOccurrence (int idEnseignant) {
		Connection conn=DbConnect.connect();

		String sql = "Select count(id) FROM affectation WHERE id=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		int nombreOccurrence=0;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idEnseignant);
			rs=ps.executeQuery();
			if (rs.next()) {
				nombreOccurrence=rs.getInt(1);
			}
			
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return nombreOccurrence;
	}

	public int findIdEnseigantByIdEtudiant(int id_Etudiant) {
		Connection conn=DbConnect.connect();

		String sql = "Select id FROM affectation WHERE id_Etudiant=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		int idEnseignant=0;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id_Etudiant);
			rs=ps.executeQuery();
			if (rs.next()) {
				idEnseignant=rs.getInt(1);
			}
			
			conn.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return idEnseignant;
		
	}
	
	public int findByEtudiant(int id) {
		Connection conn=DbConnect.connect();

		String sql = "Select id_Sujet FROM affectation WHERE id_Etudiant=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		int idSujet = 0 ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while (rs.next()){
				idSujet = rs.getInt("id_Sujet");
			}	
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		return idSujet;
	}



	public boolean delete() {
		Connection conn = DbConnect.connect();
		boolean verif = false;
		String sql = "DELETE FROM affectation";
		String sql2= "UPDATE etudiant set id_enseignant = null WHERE 1 "; 
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			verif = ps.execute();
			ps = (PreparedStatement) conn.prepareStatement(sql2);
			ps.execute();
			conn.close();

		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		return verif;
	}
	
}
