<%@ page language="java" 
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="test.*,java.util.*"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 60%;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        .message {
            font-size: 1.2em;
            color: #4CAF50;
            margin: 20px 0;
        }
        .user-info, .transaction-info {
            font-size: 1.1em;
            color: #666;
            margin: 10px 0;
        }
        .action-links {
            margin: 20px 0;
        }
        .action-links a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            color: white;
            background-color: #007BFF;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .action-links a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            UserBean ub = (UserBean)session.getAttribute("ubean");
            ArrayList<ProductBeanUser> al = (ArrayList<ProductBeanUser>)session.getAttribute("alist_u");
            String msg = (String)request.getAttribute("msg");
            out.println("<h1>Welcome, " + ub.getFirstName() + "</h1>");
            out.println("<div class='user-info'>Page Belongs to User: " + ub.getFirstName() + "</div>");
            String uName = ub.getUserName();
            String pCode = (String)request.getAttribute("pcode");
            Integer quantity = (Integer)request.getAttribute("reqQuan");
            out.println("<div class='transaction-info'>Transaction Successful</div>");
        %>
        <div class="action-links">
            <a href="view2">View All Products</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
