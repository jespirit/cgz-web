

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Department
 */
@WebServlet("/Department")
public class Department extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Department() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		StringBuilder sb = new StringBuilder();
		
		Connection conn = null;
		Statement cstmt = null;
		
		// INITIALIZE ORACLE DATABASE DRIVER
		try {
			DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
	
			// CONNECT TO DATABASE ( "jdbc:oracle:thin:@<host>:<port>:<sid>","<schema>", "<schema password>" )
			// Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr" );
			String thinDriverConnectDescriptorURL = "jdbc:oracle:thin:@myoracle12c.senecacollege.ca:1521:oracle12c";
			conn = DriverManager.getConnection(
					thinDriverConnectDescriptorURL, "cjv805_191a43", "23230168");
	
			// PREPARE PL/SQL FUNCTION CALL ("?" IS A PLACEHOLDER FOR RETURN VALUES
			// AND PARAMETER VALUES, NUMBERED FROM LEFT TO RIGHT)
			cstmt = conn.createStatement();
	
			// CALL THE PL/SQL FUNCTION
			ResultSet resultSet = cstmt.executeQuery("SELECT * FROM department");
			
			sb.append("<ol>");
	
			while (resultSet.next()) {
				sb.append("<li>" + resultSet.getString("name") + "</li>");
			}
			
			sb.append("</ol>");
			
			// send JSON
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			out.print(sb.toString());
			out.flush();  // commit
		}
		catch (SQLException e) {
			System.err.println("SQL Exception caught: " + e.getMessage());
		}
		finally {
			try {
				if (cstmt != null)
					cstmt.close();
				if (conn != null)
					// CLOSE THE DATABASE CONNECTION
					conn.close();
			}
			catch (SQLException e) {
				System.err.println("SQL Exception caught in finally block: " + e.getMessage());
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
