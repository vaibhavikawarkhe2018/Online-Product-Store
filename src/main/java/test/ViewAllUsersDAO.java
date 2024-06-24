package test;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewAllUsersDAO 
{
	public ArrayList<UserBean> users=new ArrayList<UserBean>();
	public ArrayList<UserBean> retrive()
	{
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from UserTab58");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) 
			{
				UserBean user=new UserBean();
				user.setUserName(rs.getString(1));
				user.setPassWord(rs.getString(2));
				user.setFirstName(rs.getString(3));
				user.setLastName(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setMailId(rs.getString(6));
				user.setPhoneNumber(rs.getLong(7));
				users.add(user);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return users;
	}


}
