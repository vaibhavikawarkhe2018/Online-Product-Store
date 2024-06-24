package test;
import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/viewUsers")

public class ViewAllUsersServlet extends HttpServlet
{
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
        HttpSession hs=req.getSession();
		if(hs==null) 
		{
			req.setAttribute("msg", "Session Expired..<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			
			ArrayList<UserBean> users=new ViewAllUsersDAO().retrive();
			
			hs.setAttribute("usersList", users);
			System.out.println(users.size());
			req.getRequestDispatcher("ViewAllUser.jsp").forward(req, res);
		}
	}
}
