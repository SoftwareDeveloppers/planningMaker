package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	static Connection con=null;
	public static Connection connect(){
		
		 con =null ;
		
		 String url = "jdbc:mysql://localhost:3306/planning_maker";
		 try {
			 
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,"root","");
			
		

			
		} catch (Exception e) {
			
			System.out.println("erreur");
			
		}
		 
		 return con ;
		
	}
	
	
	/*public static void main(String[] args) {
		System.out.println(DbConnect.connect());
	}*/
	
	
}
