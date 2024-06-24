package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class ViewAllOrdersDAO 
{
	public ArrayList<OrdersDetailsInfoBean>orders=new ArrayList<OrdersDetailsInfoBean>();
	
	public ArrayList<OrdersDetailsInfoBean> retrive(){
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement pstmt=con.prepareStatement("select * from OrderInfoTab58");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				OrdersDetailsInfoBean order=new OrdersDetailsInfoBean();
				order.setuName(rs.getString(1));
				order.setpCode(rs.getString(2));
				order.setQuant(rs.getInt(3));
				orders.add(order);
			}
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		return orders;
	}
}
