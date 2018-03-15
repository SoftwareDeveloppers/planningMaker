package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.FicheDeVoeux;

public class FicheDeVoeuxDaoImpl implements FicheDeVoeuxDao {
	Connection conn=DbConnect.connect();
	
	public boolean create(FicheDeVoeux fiche) {
		String sql = "INSERT INTO fichedevoeux (id, specialite, id_Etudian) "
				+ "VALUES (NULL, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, fiche.getSpecialite());
			ps.setInt(2, fiche.getIdEtudiant());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public boolean delete(FicheDeVoeux e) {
		boolean verif = false ;
		
		String sql = "DELETE FROM fichedevoeux WHERE id=?";
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

	public boolean update(FicheDeVoeux fiche) {
		
		String sql = "UPDATE fichedevoeux SET specialite=?, id_Etudian=?)  "
				+ "WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, fiche.getSpecialite());
			ps.setInt(2, fiche.getIdEtudiant());
			ps.setInt(2, fiche.getId());
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public FicheDeVoeux findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<FicheDeVoeux> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
