package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.Etudiant;

public class EtudiantDaoImpl implements EtudiantDao {

	public boolean create(Etudiant etudiant) {
		Connection conn=DbConnect.connect();

		String sql = "INSERT INTO etudiant (nom, prenom, email, mdp, dateNaissance, specialite, promotion, moyenne, taux)"
				+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, '0');";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, etudiant.getNom());
			ps.setString(2, etudiant.getPrenom());
			ps.setString(3, etudiant.getEmail());
			ps.setString(4, etudiant.getMdp());
			ps.setDate(5, etudiant.getDateNaissance());
			ps.setString(6, etudiant.getSpecialite());
			ps.setString(7, etudiant.getPromotion());
			ps.setFloat(8, etudiant.getMoy());
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}
	}

	public boolean delete(int id) {
		Connection conn=DbConnect.connect();

		boolean verif = false;
		String sql = "DELETE FROM etudiant WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);

			verif = ps.execute();
			conn.close();

		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		return verif;

	}

	public boolean update(Etudiant etudiant) {
		Connection conn=DbConnect.connect();
		
		String sql = "UPDATE etudiant SET nom= ? , prenom = ?, email= ?, mdp = ?, dateNaissance = ?, specialite = ?, promotion = ?, moyenne = ?, taux= ? WHERE id = ?;";
		
		PreparedStatement ps;
		try {
			
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, etudiant.getNom());
			ps.setString(2, etudiant.getPrenom());
			ps.setString(3, etudiant.getEmail());
			ps.setString(4, etudiant.getMdp());
			ps.setDate(5, etudiant.getDateNaissance());
			ps.setString(6, etudiant.getSpecialite());
			ps.setString(7, etudiant.getPromotion());
			ps.setFloat(8, etudiant.getMoy());
			ps.setFloat(9, etudiant.getTaux());
			ps.setInt(10, etudiant.getId());
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}

	}

	public Etudiant findById(int id) {
		Connection conn=DbConnect.connect();

		String sql = "Select * FROM etudiant WHERE id=?";
		PreparedStatement ps;
		ResultSet rs = null;
		Etudiant etudiant = null;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				etudiant = new Etudiant(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getFloat(9),
						rs.getFloat(10),rs.getInt(11),rs.getInt(12));

			}
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return etudiant;
	}

	public List<Etudiant> findAll() {
		Connection conn=DbConnect.connect();

		String sql = "Select * FROM etudiant";
		PreparedStatement ps;
		ResultSet rs = null;
		List<Etudiant> etudiants = new ArrayList<Etudiant>();
		Etudiant etudiant = null;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {
				etudiant = new Etudiant(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getFloat(9),
						rs.getFloat(10),rs.getInt(11),rs.getInt(12));

				etudiants.add(etudiant);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();

		}

		return etudiants;
	}

	public List<String> findSpecialite() {
		Connection conn=DbConnect.connect();

		String sql = "Select DISTINCT specialite FROM etudiant";
		PreparedStatement ps;
		ResultSet rs = null;
		List<String> specialites = new ArrayList<String>();

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {

				specialites.add(rs.getString("specialite"));

			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();

		}

		return specialites;
	}

	public Etudiant check(String user, String mdp) {
		Connection conn=DbConnect.connect();

		String sql = "SELECT * FROM etudiant WHERE email=?";
		int result = 0;
		PreparedStatement ps;
		ResultSet rs = null;
		Etudiant etudiant = null;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, user);
			rs = ps.executeQuery();
			if (rs.next()) {
				if (mdp.equals(rs.getString("mdp")))
					etudiant = new Etudiant(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getFloat(9),
							rs.getFloat(10),rs.getInt(11),rs.getInt(12));

			}
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return etudiant;
	}

	public boolean checkEmail(String email) {
		Connection conn=DbConnect.connect();

		String sql = "SELECT * FROM etudiant WHERE email=?";
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
	
	public boolean addFicheDeVoeux(int id, int idF) {
		Connection conn=DbConnect.connect();

		String sql = "UPDATE etudiant SET id_FicheDeVoeux=? WHERE id = ?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, idF);
			ps.setInt(2, id);
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}

	}
	
	public List<Etudiant> findBySpecialite(String specialite) {
		Connection conn=DbConnect.connect();

		String sql = "SELECT *  FROM etudiant WHERE specialite = ? ";
		PreparedStatement ps;
		ResultSet rs = null;
		List<Etudiant> etudiants = new ArrayList<Etudiant>();
		Etudiant etudiant = null;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, specialite);
			rs = ps.executeQuery();
			while (rs.next()) {
				etudiant = new Etudiant(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getFloat(9),
						rs.getFloat(10),rs.getInt(11),rs.getInt(12));

				etudiants.add(etudiant);
			}
			
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			}
		
		return etudiants;	
	}


	public boolean updateTaux(int id, int taux) {
		Connection conn=DbConnect.connect();
		
		String sql = "UPDATE etudiant SET taux= ? WHERE id = ?;";
		
		PreparedStatement ps;
		try {
			
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, taux);
			ps.setInt(2, id);
		
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}

	}
}