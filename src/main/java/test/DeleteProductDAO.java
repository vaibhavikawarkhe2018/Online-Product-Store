package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO 
{
	public int k=0;
	public int deleteProduct(ProductBean pb) 
	{
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("Delete from Product58 where code=?");
			ps.setString(1, pb.getCode());
			k=ps.executeUpdate();
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		return k;
	}

}
