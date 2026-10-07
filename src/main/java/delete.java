

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.io.*;

public class delete extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String pid = request.getParameter("pid");
			PrintWriter pw = response.getWriter();
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsp1","root","bhuvanesh");
				Statement st = con.createStatement();
				st.executeUpdate("delete from wsp1.products where pid = '"+pid+"'");
				response.sendRedirect("index.jsp");
			}
			catch(Exception e) {
				pw.println(e.getMessage());
			}
	}
}
