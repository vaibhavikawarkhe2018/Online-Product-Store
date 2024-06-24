package test;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/orderinfo")
public class OrderDataInfoServlet extends HttpServlet
{
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		String uName=req.getParameter("uname");
		String pCode=req.getParameter("pcode");
		Integer quant=Integer.parseInt(req.getParameter("quant"));
		System.out.println(quant);
		OrdersDetailsInfoBean order=new OrdersDetailsInfoBean();
		order.setuName(uName);
		order.setpCode(pCode);
		order.setQuant(quant);
		int k=new OrderInfoDAO().insertOrderInfo(order);
		if(k>0) 
		{
			System.out.println("Insert in order table");
			req.getRequestDispatcher("OrderMedi.jsp").include(req, res);
		}
		else
		{
			System.out.println("insertation fail");
		}
	}

}
