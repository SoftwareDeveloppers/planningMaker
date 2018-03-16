package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.FicheDeVoeux;

public class FicheDeVoeuxDaoImpl implements FicheDeVoeuxDao {
	Connection conn=DbConnect.connect();
	
	public boolean create(FicheDeVoeux fiche) {
		String sql = "INSERT INTO fichedevoeux (id, id_Sujet) "
				+ "VALUES (?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, fiche.getId());
			ps.setInt(2, fiche.getIdSujet());
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
		
		String sql = "UPDATE fichedevoeux SET  id_Sujet=?)  "
				+ "WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(2, fiche.getIdSujet());
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
