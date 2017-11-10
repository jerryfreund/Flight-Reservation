package fr.freund.jsp;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet(description = "Login_Servlet", urlPatterns = { "/Registration" })
public class Registration extends  HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		//out.println("This was called from the Post Method\n");
		
		//Getting the Parameters
		String uName, uPassword, address = null;
		
		uName = request.getParameter("newName");
		uPassword = request.getParameter("newPassword");
		
		//Create a class to validate the login
		//if user exist redirect to FlightSearchQuery.jsp
		//if user does not exist redirect to registration.jsp
		Users checkUser = new Users(uName, uPassword);
		
		
		//added on 9-23 9:38 am
		FileWriter fw = new FileWriter("Accounts.txt", true);
		fw.write(uName +"," + uPassword + System.getProperty( "line.separator" ));
		fw.close();
		
		
		
		
		
		address = "Login.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
		
		//this servlet should write to a file, the same file that is used
		//by users to populate the hashmap
		//period. This should be a text file sepated by space or (,)
		//the new accounts should be appended at the end of the file.

	}

}