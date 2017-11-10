package fr.freund.jsp;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.annotation.processing.FilerException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
/* @WebServlet(description = "Login_Servlet", urlPatterns = { "/Login" }) */
public class Login extends HttpServlet {
	/* private static final long serialVersionUID = 1L; */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		//out.println("This was called from the Post Method\n");

		// Getting the Parameters
		String uName, uPassword, address = null;
		//String nName, nPassword, flag;//test
		String file;

		uName = request.getParameter("userName");
		uPassword = request.getParameter("Password");
		

		//Users checkUser = new Users(uName, uPassword);
		Users checkUser = new Users();
		
		
		
		//checkUser.readFile();//0923
		
		
		// Creating a default user admin/password
		//this is where i need to populate the file after setting the default password
		/////////////////////////////////////////////////
		FileWriter fw = new FileWriter("Accounts.txt", true);
		fw.write("admin" +", " + "password" + System.getProperty( "line.separator" ));
		fw.close();
		
		
		
		
		File userCredential = new File("Accounts.txt");
		
		Scanner inFile = new Scanner(userCredential);
		
		try {
			while (inFile.hasNextLine()) // Read in file and store.
			{
				
				//open the file for reading
				file = inFile.nextLine();
				String[] resultingTokens = file.split(",");
				
				//Tokens - read the tokens
				String userN = resultingTokens[0];
				String userP = resultingTokens[1];
				
				checkUser.setHashTable(userN, userP);
				
				System.out.println("=>" + userN + userP);
				
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("File empty ==> moving on");
		}
		
		//set default users for test
		/*userHashMap.put("admin", "password");
		userHashMap.put("guest", "guest");*/
		
		inFile.close();
		
		checkUser.setHashTable("admin", "password");
		
		/////////////////////////////////////////////////
		//checkUser.setHashTable("admin", "password");

		try {
			String password = checkUser.getPassword(uName);//test0925
			
			System.out.println("we got the password from checkUser (password): " + password);
			System.out.println("The given password (uPassword) is :" + uPassword);
			
			if (uPassword.equals(password)) {
				System.out.println("Caught a good password :-)");
				System.out.println("password is :" + password);
				address = "FlightSearch.jsp";
			} else {
				System.out.println("Caught a bad password :-/");
				System.out.println("password is :" + password);
				address = "Registration.jsp";
			}
		} catch (NullPointerException e) {
			// if any of the values were null then we register a new user
			address = "Registration.jsp";
			System.out.println("Caught an exception :-| ");
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);

	}

}
