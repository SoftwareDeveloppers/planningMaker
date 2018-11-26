package Fonction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import dao.DbConnect;
import model.Sujet;

public class Act {

	Encryptor enc = new Encryptor();
	
	public boolean create(String mac) {
		Connection conn=DbConnect.connect();
	String sql = "INSERT INTO act (mcadr) VALUES (?)";
	System.out.println("creat actttt");
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, enc.encrypt(mac));
			ps.execute();
			conn.close();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			return false;
		}
	}

	public List<ActModel> findAll() {
		Connection conn=DbConnect.connect();
		String sql = "Select * FROM act";
		PreparedStatement ps;
		ResultSet rs =null ;
		List<ActModel> macs= new ArrayList<ActModel>();
		ActModel actm ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while (rs.next()){
				actm = new ActModel(rs.getInt(1),enc.decrypt(rs.getString(2)));
				macs.add(actm);
			}	
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return macs;
	}
	
	public ActModel findByMcadr(String mcadr) {
		Connection conn=DbConnect.connect();
		String sql = "Select * FROM act WHERE mcadr=?";
		PreparedStatement ps;
		ResultSet rs = null ;
		ActModel actm = null ;
		
		try {
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, enc.encrypt(mcadr));
			rs=ps.executeQuery();
			if (rs.next()){
				actm = new ActModel(
						rs.getInt("id"),
						enc.decrypt(rs.getString("mcadr"))
						);
			}
			else {return null;}
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return actm;
	}

}
