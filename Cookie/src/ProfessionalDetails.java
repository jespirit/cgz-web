

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProfessionalDetails
 */
@WebServlet("/ProfessionalDetails")
public class ProfessionalDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfessionalDetails() {
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
		PrintWriter out = response.getWriter();
		String html =
				"<html><head><title>Inbox</title></head>"
			  + "<body>"
			  + "<h2>Professional Details</h2>"
			  + "<form method='post' action='RegistrationSuccess'>"
			  + "College name <input type='text' name='college'/><br/>"
			  + "Equalification <input type='text' name='degree'/><br/>"
			  + "<input type='hidden' name='fname' value='" + fname + "'/>"
			  + "<input type='hidden' name='lname' value='" + lname + "'/>"
			  + "<input type='hidden' name='uname' value='" + uname + "'/>"
			  + "<input type='submit' name='register' value='Register'/>"
			  + "</body><html>";
		out.print(html);
		
	}

}
