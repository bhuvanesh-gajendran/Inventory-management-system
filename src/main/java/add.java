

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

public class add extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pname = request.getParameter("pname");
		String pprice = request.getParameter("pprice");
		String pquantity = request.getParameter("pquantity");
		String ptype = request.getParameter("ptype");
		String pimage = request.getParameter("pimage");
		String pimagefinal = "images/products/"+pimage;
		PrintWriter pw = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsp1","root","bhuvanesh");
			Statement st = con.createStatement();
			st.executeUpdate("insert into wsp1.products(pname,ptype,pquantity,pprice,pimage) values('"+pname+"','"+ptype+"','"+pquantity+"','"+pprice+"','"+pimagefinal+"') ");
			response.sendRedirect("index.jsp");
		}
		catch(Exception e) {
			pw.println(e.getMessage());
		}
	}
}
