package dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import model.Assiste;

public class AssisteDaoImpl implements AssisteDao{

	public boolean create(Assiste a) {
		Connection conn = DbConnect.connect();

		String sql = "INSERT INTO assiste (id, id_Enseignant) VALUES (?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, a.getId_soutenance());
			ps.setInt(2, a.getId_enseignant());

			ps.execute();
			conn.close();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}
	}

	public boolean delete(Assiste e) {

		return false;
	}

	public boolean update(Assiste e) {

		return false;
	}

}
