package com.kh.test.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TestDao {

	public List<TEST> selectList() {

			Connection con = null;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.3:1521:xe","kh","kh");
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
			Statement stmt = null;
			ResultSet rs = null;
			List<TEST> res = new ArrayList<TEST>();

			String sql = " SELECT * FROM TEST ";

			try {
				stmt = con.createStatement();
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					TEST dto = 
							new TEST(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getDate(5));
					res.add(dto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					rs.close();
					stmt.close();
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return res;
		}

}
