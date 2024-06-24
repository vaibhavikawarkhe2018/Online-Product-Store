package test;

import java.sql.Connection;
import java.sql.PreparedStatement;


public class UserBuyDAO 
{
	public int k=0;
	public int updateProductAfterBuy(ProductBeanUser pb) 
	{
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement pstmt=con.prepareStatement("update product58 set Qty=? where code=?");
			pstmt.setInt(1, pb.getQty());
			pstmt.setString(2, pb.getCode());
			k=pstmt.executeUpdate();
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		return k;
	}
}
