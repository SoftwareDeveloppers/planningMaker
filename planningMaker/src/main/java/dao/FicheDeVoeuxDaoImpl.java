package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Enseignant;
import model.FicheDeVoeux;
import model.Sujet;

public class FicheDeVoeuxDaoImpl implements FicheDeVoeuxDao {
	Connection conn=DbConnect.connect();
	
	public boolean create(FicheDeVoeux fiche) {
		String sql = "INSERT INTO fichedevoeux (id, id_Sujet,ordre) "
				+ "VALUES (?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, fiche.getId());
			ps.setInt(2, fiche.getIdSujet());
			ps.setInt(3, fiche.getOrdre());

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

	public boolean update(FicheDeVoeux fiche , int idSujetAncien) {
		
		String sql = "UPDATE fichedevoeux SET id_Sujet=? WHERE id=? AND id_Sujet=? AND ordre = ? ";
				
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, fiche.getIdSujet());
			ps.setInt(2, fiche.getId());
			ps.setInt(3, idSujetAncien);
			ps.setInt(4, fiche.getOrdre());

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

	public int nbrSujeuts(int id) {
		String sql = "SELECT COUNT(id) FROM fichedevoeux WHERE id=?";
		int result =0 ;
		PreparedStatement ps;
		ResultSet rs =null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1 , id);
			rs=ps.executeQuery();
			if (rs.next()){
				
					result = rs.getInt(1);
				
			}
			conn.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
		
		return result;
	}

	public List<Sujet> listSujets(int idficheDevoeux) {

		
		String sql = "Select * FROM fichedevoeux,sujet WHERE fichedevoeux.id=? and fichedevoeux.id_Sujet=sujet.id order by ordre asc ";
		PreparedStatement ps;
		ResultSet rs = null ;
		List<Sujet> sujets= new ArrayList<Sujet>();
		Sujet sujet = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idficheDevoeux);
			rs=ps.executeQuery();
			
			while (rs.next()){
				sujet = new Sujet(
						rs.getInt("id_Sujet"),
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

	public FicheDeVoeux findByIdAndOrdre(int id, int ordre) {
		
		return null;
	}

		
		
	
	

}
