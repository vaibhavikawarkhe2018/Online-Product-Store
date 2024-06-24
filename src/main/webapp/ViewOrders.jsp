<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="test.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 800px;
        }
        .container h2 {
            margin-bottom: 20px;
        }
        .container table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .container table, th, td {
            border: 1px solid #ddd;
        }
        .container th, td {
            padding: 12px;
            text-align: left;
        }
        .container th {
            background-color: #f2f2f2;
        }
        .container .no-data {
            text-align: center;
            color: #888;
        }
        .container .nav-links {
            text-align: center;
        }
        .container .nav-links a {
            display: inline-block;
            margin: 0 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .container .nav-links a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Order Details</h2>
        <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        ArrayList<OrdersDetailsInfoBean> al = (ArrayList<OrdersDetailsInfoBean>) session.getAttribute("ordersList");

        if (al == null || al.size() == 0) {
            out.println("<p class='no-data'>No Orders Available.</p>");
        } else {
            out.println("<table>");
            out.println("<tr><th>UserName</th><th>ProductCode</th><th>Quantity</th></tr>");

            for (OrdersDetailsInfoBean order : al) {
                out.println("<tr>"
                        + "<td>" + order.getuName() + "</td>"
                        + "<td>" + order.getpCode() + "</td>"
                        + "<td>" + order.getQuant() + "</td>"
                        + "</tr>");
            }
            out.println("</table>");
        }
        %>
        <div class="nav-links">
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
