package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.AgentAdmin;
import model.Enseignant;

public class AgentDaoImpl implements AgentDao {

	public boolean create(AgentAdmin a) {
		Connection conn = DbConnect.connect();

		String sql = "INSERT INTO agentadmin (nom, prenom, email, mdp)" + " VALUES (?, ?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, a.getNom());
			ps.setString(2, a.getPrenom());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getMdp());
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}
	}

	public boolean delete(AgentAdmin a) {
		Connection conn = DbConnect.connect();

		boolean verif = false;
		String sql = "DELETE FROM agentadmin WHERE id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, a.getId());

			verif = ps.execute();
			conn.close();

		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		return verif;
	}

	public boolean update(AgentAdmin a) {
		Connection conn = DbConnect.connect();

		String sql = "UPDATE agentadmin SET nom = '?', prenom = '?', email = '?', mdp = '?'" + " WHERE id = ?;";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, a.getNom());
			ps.setString(2, a.getPrenom());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getMdp());
			ps.setInt(5, a.getId());
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}
	}

	public AgentAdmin findById(int id) {
		Connection conn = DbConnect.connect();

		String sql = "Select * FROM agentadmin WHERE id=?";
		PreparedStatement ps;
		ResultSet rs = null;
		AgentAdmin agent = null;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				agent = new AgentAdmin(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5));
			}
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return agent;
	}

	public List<AgentAdmin> findAll() {
		Connection conn = DbConnect.connect();

		String sql = "Select * FROM agentadmin";
		PreparedStatement ps;
		ResultSet rs = null;
		List<AgentAdmin> agents = new ArrayList<AgentAdmin>();
		AgentAdmin agent = null;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {
				agent = new AgentAdmin(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5));

				agents.add(agent);
			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();

		}

		return agents;

	}

	public AgentAdmin check(String user, String mdp) {
		Connection conn = DbConnect.connect();

		String sql = "SELECT * FROM agentadmin WHERE email=?";
		int result = 0;
		PreparedStatement ps;
		ResultSet rs = null;
		AgentAdmin agent = null;

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, user);
			rs = ps.executeQuery();
			if (rs.next()) {
				if (mdp.equals(rs.getString("mdp")))
					agent = new AgentAdmin(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
							rs.getString(5));
			}
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();

		}

		return agent;
	}

	public boolean checkEmail(String email) {
		Connection conn = DbConnect.connect();

		String sql = "SELECT * FROM agentadmin WHERE email=?";
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
	public boolean updateProfil(AgentAdmin a) {
		Connection conn=DbConnect.connect();
		String sql = "UPDATE agentadmin SET nom = ?, prenom = ?, email = ?  WHERE id = ?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, a.getNom());
			ps.setString(2, a.getPrenom());
			ps.setString(3, a.getEmail());
			ps.setInt(4, a.getId());
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}

	}

}