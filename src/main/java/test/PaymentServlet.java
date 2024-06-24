package test;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/payment")
public class PaymentServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session expired..<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else 
		{
			ArrayList<ProductBeanUser> al=(ArrayList<ProductBeanUser>)hs.getAttribute("alist_u");
			String pCode=req.getParameter("pcode");
			System.out.println(pCode);
			System.out.println(req.getParameter("required"));
			int reqQuant=Integer.parseInt(req.getParameter("required"));

			Iterator<ProductBeanUser> it=al.iterator();
			while(it.hasNext()) 
			{
				ProductBeanUser pb=(ProductBeanUser)it.next();
				if(pCode.equals(pb.getCode())) 
				{
					int avaQuant=pb.getQty();
					if(reqQuant>avaQuant) 
					{
						req.setAttribute("msg", "Required Quantity Not Greater Than Available Quantity");
						req.getRequestDispatcher("Msg.jsp").forward(req, res);
					}
					else
					{
						pb.setQty(avaQuant-reqQuant);
						int k=new UserBuyDAO().updateProductAfterBuy(pb);
						if(k>0)
						{
							req.setAttribute("reqQuan", reqQuant);
							req.setAttribute("pcode", pCode);
							req.setAttribute("msg","Your Payment Placed Successfully..<br>");
							req.getRequestDispatcher("PaymentSuccess.jsp").forward(req, res);
						}
					}
					
					
				}
			}
		}
	}
}