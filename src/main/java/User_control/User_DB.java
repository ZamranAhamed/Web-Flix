package User_control;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class User_DB {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String userName, String password) {
		
		//validate 
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
    		String sql = "select * from new_table where registered_user_name = '" + userName + "' and password = '" + password + "'";
    		rs = stmt.executeQuery(sql);
    		
    		if(rs.next())
    		{
    			isSuccess = true;
    		}
    		else
    		{
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return isSuccess;	
    }
	
	public static List<Registered_user> getRegUser(String username)
	{
		ArrayList<Registered_user> user = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
    		String sql = "select * from new_table where registered_user_name = '" + username + "'";
    		rs = stmt.executeQuery(sql);
			
    		while(rs.next())
    		{
    			int id = rs.getInt(1);
				String name = rs.getString(2);
				String password = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String address = rs.getString(6);
				
				Registered_user ru = new Registered_user(id,name,password,email,phone,address);
				user.add(ru);
    		}
    		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return user;
	}
	
	public static boolean insertRegUser(String email,String phone,String address,String username,String password)
	{
		
		boolean isSuccess = false;
		
				try {
					con =DBconnect.getConnection();
					stmt = con.createStatement();
					Class.forName("com.mysql.jdbc.Driver");
		    		
		    		
		    		String sql = "insert into new_table values (0,'" + username + "','" + password + "','" + email + "','" + phone + "','" + address + "')";
		    		
		    		int rs = stmt.executeUpdate(sql);
		    		
		    		if(rs > 0)
		    		{
		    			isSuccess = true;
		    		}
		    		else
		    		{
		    			isSuccess = false;
		    		}
					
				}catch(Exception e)
				{
					e.printStackTrace();
				}
		
				return isSuccess;
	}
	
	public static boolean updateRegUser(String id,String name,String password,String email,String phone,String address)
	{
		try {
			
			con=DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update new_table set registered_user_name='"+ name + "',password='"+ password + "',email='"+ email + "',phone='" 
			+ phone + "',address='" + address + "'" + "where Registered_user_id='" + id + "'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Registered_user> getUserDetails(String ID)
	{
		int convertedID = Integer.parseInt(ID);
		
		ArrayList<Registered_user> user = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from new_table where Registered_user_id= '" + convertedID + "'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String password = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String address = rs.getString(6);
				
				Registered_user ru = new Registered_user(id,name,password,email,phone,address);
				user.add(ru);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return user;
	}
	
	
	public static boolean deleteRegUser(String id)
	{
		int convertedID = Integer.parseInt(id);
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from new_table where Registered_user_id='" + convertedID + "'";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	
}
