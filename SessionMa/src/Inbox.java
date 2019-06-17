

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Inbox
 */
@WebServlet("/Inbox")
public class Inbox extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inbox() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		String username = request.getParameter("user");
//		String location = request.getParameter("location");
		
		String username = null;
		String location = null;
		
//		Cookie[] cookies = request.getCookies();
//		
//		for (Cookie cookie : cookies) {
//			if (cookie.getName().equals("user")) {
//				username = cookie.getValue();
//			}
//			else if (cookie.getName().equals("location")) {
//				location = cookie.getValue();
//			}
//		}
		
		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {
			response.sendRedirect("login.html");
		}
		else {
			username = session.getAttribute("user").toString();
			location = session.getAttribute("location").toString();
		}
		
		PrintWriter out = response.getWriter();
		String html =
				"<html><head><title>Inbox</title></head>"
			  + "<body>"
			  + "<h1>Inbox</h2>"
			  + "<h2>Welcome " + username + "</h2>"
			  + "<h2>Location " + location + "</h2>"
//			  + "<a href='SentItems?user=" + username + "&location=" + location + "'/>Sent Items</a>"
			  + "<a href='SentItems'/>Sent Items</a><br/>"
			  + "<a href='Logout'/>Log Out</a>"
			  + "</body><html>";
		out.print(html);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
