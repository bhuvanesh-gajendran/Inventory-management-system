

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class regval extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String cpassword = request.getParameter("cpassword");
			PrintWriter pw = response.getWriter();
			if(password.equals(cpassword)) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wsp1","root","bhuvanesh");
					Statement st = con.createStatement();
					st.executeUpdate("insert into wsp1.users(uname,upassword) values ('"+username+"','"+password+"') ");
					response.sendRedirect("login.jsp");
				}
				catch(Exception e) {
					pw.println(e.getMessage());
				}
			}else {
				response.sendRedirect("register.jsp");
			}
			
	}
}
