

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.*;
import java.sql.*;

public class logval extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		PrintWriter pw = response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsp1","root","bhuvanesh");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from wsp1.users where uname = '"+username+"' and upassword = '"+password+"' ");
			if(rs.next()) {
					String user = rs.getString(2);
					String id = rs.getString(1);
					HttpSession session = request.getSession();
					session.setAttribute("uid",user);
					session.setAttribute("username",user);
					response.sendRedirect("index.jsp");
			}
			else {
				response.sendRedirect("login.jsp");	
			}
		}
		catch(Exception e) {
			pw.println(e.getMessage());
		}
	}
}
