package com.train;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;



public class JDBCProc {
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {

			System.out.println("Where is your MySQL JDBC Driver?");
			e.printStackTrace();
			return;
		}

		Connection connection = null;
		CallableStatement pstmt;

		try {
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/class3", "root", "");
			if (connection != null) {
				connection.setAutoCommit(false);
				String query = "CALL SHOW_STUDENT(1); ";
				pstmt = connection.prepareCall(query);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next())
				{
					System.out.println(rs.getString(1));
					System.out.println(rs.getString("sname"));
				}
				connection.commit();
				
			} else {
				System.out.println("Failed to make connection!");
			}
		} catch (SQLException e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				connection.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
