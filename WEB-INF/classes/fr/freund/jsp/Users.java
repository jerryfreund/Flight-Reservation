package fr.freund.jsp;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Scanner;

public class Users{
	
	
	private String userName;
	private String uPassword;
	private String file; //0923
	HashMap<String, String> userHashMap = new HashMap<String, String>();
	//File userCredential = new File("Accounts.txt");
	
	
	public Users(){
		
	}
	
	
	public Users(String userName, String uPassword){
		this.userName = userName;
		this.uPassword = uPassword;
	}
	 
	 public void setHashTable(String userName, String uPassword){
		 this.userName = userName;
		 this.uPassword = uPassword;
		 userHashMap.put(userName, uPassword);
		 System.out.println("Set hashMap with " + userName + " " + uPassword);
		 
	 }
	 
	 public String getPassword(String userName){
		 
		this.userName = userName;
		 
		String password = userHashMap.get(userName);
		System.out.println("the given user name is :" + userName);
		System.out.println("the returned password from getpassword() is: " + password);
		return password;
		 
	 }
	 
	 public String getHashVal(){
		
		 String v = userHashMap.toString();
		 return v;
		 
	 }
	 
/*	 public void readFile() throws IOException{
		 try {
			Scanner inFile = new Scanner(userCredential);
			while (inFile.hasNextLine()) // Read in file and store.
			{
				
				//open the file for reading
				file = inFile.nextLine();
				String[] resultingTokens = file.split(",");
				
				//Tokens - read the tokens
				String userN = resultingTokens[0];
				String userP = resultingTokens[1];
				
				userHashMap.put(userN, userP);
				
			}
			
			//set default users for test
			userHashMap.put("admin", "password");
			userHashMap.put("guest", "guest");
			
			inFile.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	 }*/

}