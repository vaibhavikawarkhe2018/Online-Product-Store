package test;

import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/view2")
public class ViewAllProductsServletUser extends HttpServlet
{
    protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
    	HttpSession hs=req.getSession(false);
    	if(hs==null)
    	{
    		req.setAttribute("msg","Session Expired...<br>");
    		req.getRequestDispatcher("Msg.jsp").forward(req, res);
    	}
    	else
    	{
    		ArrayList<ProductBeanUser> al=new ViewAllProductsDAOUser().retrieve();
    		hs.setAttribute("alist_u",al);
    		req.getRequestDispatcher("ViewAllProductsUser.jsp").forward(req, res);
    	}
    }
}
