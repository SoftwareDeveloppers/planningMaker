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
		// TODO Auto-generated method stub
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
	
}
