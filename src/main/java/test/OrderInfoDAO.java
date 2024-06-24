package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class OrderInfoDAO
{
	private int k=0;
	public int insertOrderInfo(OrdersDetailsInfoBean order)
	{
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement pstmt=con.prepareStatement("insert into OrderInfoTab58 values (?,?,?)");
			pstmt.setString(1, order.getuName());
			pstmt.setString(2,order.getpCode());
			pstmt.setInt(3, order.getQuant());
			k=pstmt.executeUpdate();
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		return k;
	}
}
