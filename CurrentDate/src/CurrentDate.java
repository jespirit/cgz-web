

import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CurrentDate
 */
@WebServlet("/CurrentDate")
public class CurrentDate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String name;   
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CurrentDate() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config) {
    	name = config.getInitParameter("name");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Calendar calendar = new GregorianCalendar();
		String date = calendar.getTime().toString();
		String message = "Current date is " + date;
		request.setAttribute("message", name + ": " + message);
		RequestDispatcher dispatcher = request.getRequestDispatcher("DisplayServlet");
		dispatcher.forward(request, response);
	}

}
