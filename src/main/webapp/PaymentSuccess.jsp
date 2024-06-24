<%@ page language="java" 
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="test.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body onload="submitForm()">
    <%
    UserBean ub=(UserBean)session.getAttribute("ubean");
    ArrayList<ProductBeanUser> al=(ArrayList<ProductBeanUser>)session.getAttribute("alist_u");
    String msg=(String)request.getAttribute("msg");
   // out.println("Page Belongs to User: "+ub.getfName()+"<br>");
    String uName=ub.getUserName();
    String pCode=(String)request.getAttribute("pcode");
    Integer quantity=(Integer)request.getAttribute("reqQuan");
    out.println("Transaction SuccessFul....<br>");
    %>
    <form id="orderForm" action="orderinfo" method="post">
       <input type="hidden" name="uname" value=<%=uName%>>
        <input type="hidden" name="pcode" value=<%=pCode%>>
        <input type="hidden" name="quant" value=<%=quantity%>>
    </form>
    <a href="view2">ViewAllProduct</a><br>
    <a href="logout">Logout</a>

    <script>
        function submitForm() {
            document.getElementById("orderForm").submit();
        }
    </script>
</body>
</html>