

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationSuccess
 */
@WebServlet("/RegistrationSuccess")
public class RegistrationSuccess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationSuccess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String uname = request.getParameter("uname");
		String college = request.getParameter("college");
		String degree = request.getParameter("degree");
		PrintWriter out = response.getWriter();
		String html =
				"<html><head><title>Success</title></head>"
			  + "<body>"
			  + "<h1>Registration Details</h1>"
			  + "<form method='post' action='RegistrationSuccess'>"
			  + "First name " + fname + "<br/>"
			  + "Last name " + lname + "<br/>"
			  + "User name " + uname + "<br/>"
			  + "College " + college  + "<br/>"
			  + "Degree " + degree + "<br/>"
			  + "</body><html";
		out.print(html);
	}

}
