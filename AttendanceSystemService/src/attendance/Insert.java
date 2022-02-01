package attendance;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Insert
 */
@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert() {
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
		// getting all values which were inputted to fields
		String s_id = request.getParameter("s_id");
		String s_intime = request.getParameter("s_intime");
		String s_outtime = request.getParameter("s_outtime");
		String s_totaltime = request.getParameter("s_totaltime");
		String s_note = request.getParameter("s_note");
		
		// Creating a new object of type insert student which is where the insert method is handled
		InsertStudent student = new InsertStudent();
		
		// Calling the insert method and passing the entered values in the fields
		student.ValidInsert(s_id, s_intime, s_outtime, s_totaltime, s_note);
		
		// After inserting a student, redirected to database managment page
		response.sendRedirect("DatabaseManagment.jsp");
	}

}
