package test;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/userlogin")
public class UserLoginServlet extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	String uN = req.getParameter("uname");
	String pW = req.getParameter("pword");
	UserBean ub = new UserLoginDAO().login(uN, pW);

if(ub==null) 
{
	req.setAttribute("msg", "Invalid Login process...<br>");
	RequestDispatcher rd = req.getRequestDispatcher("Msg.jsp");
	rd.forward(req, res);

}
else
{
HttpSession hs=req.getSession();
hs.setAttribute("ubean", ub);
RequestDispatcher rd = req.getRequestDispatcher("UserLoginSuccess.jsp");
rd.forward(req, res);
	
	/*ServletContext sct = req.getServletContext();
	//Accessing ServletContext-Object reference
	sct.setAttribute("ubean", ub);//Adding Bean to ServletContext
	Cookie ck = new Cookie("fname",ub.getfName());
	res.addCookie(ck);//Adding Cookie to Response
	RequestDispatcher rd = req.getRequestDispatcher("UserLogSuccess.jsp");

	rd.forward(req, res);*/
  
}
}
}