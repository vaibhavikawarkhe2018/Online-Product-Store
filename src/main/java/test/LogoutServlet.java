package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet
{
   protected  void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException 
   {
	  HttpSession hs=req.getSession(false);
	  if(hs==null)
	  {
		  req.setAttribute("msg","Session Expired...<br>");
	  }
	  else
	  {
		  hs.invalidate();//session object destroyed
		  req.setAttribute("msg","Logged Out Successfully..<br>");
	  }
	  req.getRequestDispatcher("Msg.jsp").forward(req, res);
    }
}
