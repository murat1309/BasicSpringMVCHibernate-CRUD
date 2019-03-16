/*package com.muratcan.testdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestDb")
public class TestDB extends HttpServlet{

	private static final long serialVersionUID = 1L;
		
	protected void doGet(HttpServletRequest request , HttpServletResponse response)  throws ServletException,IOException{
		
		String user= "murat";
		String pass = "1234";
		
		String jdbcUrl= "jdbc:mysql://localhost:3307/ogrenci_schema?useSSL=false";
		String driver = "com.mysql.jdbc.Driver";
		
		try {
			PrintWriter writer = response.getWriter();
			writer.println("Veritabani baglanti : " + jdbcUrl);
			Class.forName(driver);
			
			Connection connection = DriverManager.getConnection(jdbcUrl,user,pass);
			
			writer.println("Basarili..");
			
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		
		}
	
	}
	
}*/
