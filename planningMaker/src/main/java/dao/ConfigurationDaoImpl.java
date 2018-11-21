package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import model.Configuration;

public class ConfigurationDaoImpl implements ConfigurationDao {

	public boolean update(Configuration s) {
		Connection conn = DbConnect.connect();
		String sql = "UPDATE configuration SET nbrChoix = ? , nbrSujetPropose = ? , nbrJuree = ? , taux = ? WHERE id = 1 ";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, s.getNbrChoixSujet());
			ps.setInt(2, s.getNbrSujetProposer());
			ps.setInt(3, s.getNbrJuree());
			ps.setFloat(4, s.getTaux());
			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}

	}

	public Configuration find() {

		Connection conn = DbConnect.connect();
		String sql = "Select * FROM configuration WHERE id = 1";
		PreparedStatement ps;
		ResultSet rs = null;
		Configuration c = new Configuration();

		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);

			rs = ps.executeQuery();
			while (rs.next()) {

				c.setNbrChoixSujet(rs.getInt("nbrChoix"));
				c.setNbrJuree(rs.getInt("nbrJuree"));
				c.setNbrSujetProposer(rs.getInt("nbrSujetPropose"));
				c.setTaux(rs.getFloat("taux"));

			}
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();

		}

		return c;

	}

}
