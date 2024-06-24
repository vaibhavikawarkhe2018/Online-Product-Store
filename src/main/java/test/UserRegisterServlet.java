package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/userregister")
public class UserRegisterServlet extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
UserBean ub = new UserBean();
ub.setUserName(req.getParameter("uname"));
ub.setPassWord(req.getParameter("pword"));
ub.setFirstName(req.getParameter("fname"));
ub.setLastName(req.getParameter("lname"));
ub.setAddress(req.getParameter("addr"));
ub.setMailId(req.getParameter("mid"));
ub.setPhoneNumber(Long.parseLong(req.getParameter("phone")));
int k = new UserRegisterDAO().insertUser(ub);

if(k>0) 
{
req.setAttribute("fname", ub.getFirstName());
req.setAttribute("msg","User Registered Successfully...<br>");

RequestDispatcher rd =req.getRequestDispatcher("UserRegisterSuccess.jsp");
rd.forward(req, res);
}
}

}