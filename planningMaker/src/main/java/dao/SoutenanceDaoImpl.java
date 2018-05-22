package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Assiste;
import model.Soutenance;
import model.SoutenanceJoin;
import model.affectationJoin;

public class SoutenanceDaoImpl implements SoutenanceDao{

	public boolean create(Soutenance s) {
		Connection conn=DbConnect.connect();
		String sql = "INSERT INTO soutenance (date,	heure, 	id_Salle, id_Etudiant)"
					+ " VALUES (?,?,?,?);";
			PreparedStatement ps;
			try {
				ps = (PreparedStatement) conn.prepareStatement(sql);
				ps.setDate(1, s.getDate());
				ps.setTime(2, s.getHeure());
				ps.setInt(3, s.getId_salle());
				ps.setInt(4, s.getId_Etudiant());
				ps.execute();
				conn.close();
				
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				
				return false;
			}
		
		
	}

	public boolean delete() {
		Connection conn = DbConnect.connect();
		boolean verif = false;
		String sql = "DELETE FROM soutenance";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			verif = ps.execute();
			
			conn.close();

		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		return verif;
	}

	public boolean update(Soutenance s) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Soutenance> findAll() {
		String sql = "Select * FROM soutenance";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<Soutenance> soutenances= new ArrayList<Soutenance>();
		Soutenance soutenance = null ;
		Connection conn=DbConnect.connect();

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			while (rs.next()){
				soutenance = new Soutenance(
						rs.getInt(1),
						rs.getDate(2), 
						rs.getTime(3),
						rs.getInt(4),
						rs.getInt(5)
						);
				
				soutenances.add(soutenance);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
		
	}
	
	return soutenances;

	}
	
	public ArrayList<SoutenanceJoin> jointureSoutnance() {
		Connection conn = DbConnect.connect();
		String sql = "SELECT soutenance.id,date ,heure,id_Salle,sujet.titre,sujet.contenu,"
				+ "enseignant.nom,enseignant.prenom,etudiant.nom,etudiant.prenom"
				+ " from sujet,soutenance,affectation,assiste,enseignant,etudiant wHERE "
				+ "soutenance.id_Etudiant = affectation.id_Etudiant "
				+ "and soutenance.id_Etudiant = etudiant.id "
				+ "and soutenance.id = assiste.id "
				+ "and affectation.id_Sujet = sujet.id and enseignant.id = assiste.id_Enseignant ";
		PreparedStatement ps;
		ResultSet rs =null ;
		ArrayList<SoutenanceJoin> soutenanceJoins= new ArrayList<SoutenanceJoin>();
		SoutenanceJoin soutenanceJoin = null ;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			int i = 0; 
			while (rs.next()){
					soutenanceJoin = new SoutenanceJoin(rs.getInt(1), rs.getDate(2), rs.getTime(3), rs.getInt(4), rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
					soutenanceJoins.add(soutenanceJoin);
				}
					
			conn.close();
	} catch (SQLException ex) {
		ex.printStackTrace();
		
	}
	
	return soutenanceJoins;
	}
	
	public ArrayList<Assiste> AssitesFindALL() {
		Connection conn = DbConnect.connect();
		String sql = "SELECT * from assiste ";
		PreparedStatement ps;
		ResultSet rs =null ;
		ArrayList<Assiste> assistes = new ArrayList<Assiste>();
		Assiste assite = null ;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			
			rs=ps.executeQuery();
			int i = 0; 
			while (rs.next()){
					assite = new Assiste(rs.getInt(1), rs.getInt(2));
					assistes.add(assite);
				}
					
			conn.close();
	} catch (SQLException ex) {
		ex.printStackTrace();
		
	}
	
	return assistes;
	}
	
	

}
