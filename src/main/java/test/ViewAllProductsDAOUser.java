package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewAllProductsDAOUser 
{
	public ArrayList<ProductBeanUser> al=new ArrayList<ProductBeanUser>();
	public ArrayList<ProductBeanUser> retrieve()
	{
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from Product58");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				ProductBeanUser pb=new ProductBeanUser();
				pb.setCode(rs.getString(1));
				pb.setName(rs.getString(2));
				pb.setPrice(rs.getFloat(3));
				pb.setQty(rs.getInt(4));
				al.add(pb);
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return al;
	}
}
