package attendance;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InstructorLogin
 */
@WebServlet("/InstructorLogin")
public class InstructorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InstructorLogin() {
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
		// getting values from fields
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		
		// creaating a new object of type Instructor information which is where the login method is handled
		InstructorInformation Instructor = new InstructorInformation();
		
		// if the method returns true, redirect to database managment otherwise, redirect to error page
		if (Instructor.validLogin(uname,password)) {
			response.sendRedirect("DatabaseManagment.jsp");
		}
		else {
			response.sendRedirect("LoginError.jsp");
		}
	}


}
