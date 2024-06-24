<%@ page import="java.util.Iterator, test.*, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
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
        <h2>Available Products</h2>
        <%
        UserBean ub = (UserBean) session.getAttribute("ubean");
        ArrayList<ProductBeanUser> al = (ArrayList<ProductBeanUser>) session.getAttribute("alist_u");

        if (al == null || al.size() == 0) {
            out.println("<p class='no-data'>No Products available.</p>");
        } else {
            out.println("<table>");
            out.println("<tr><th>Code</th><th>Name</th><th>Price</th><th>Quantity</th><th>Operation</th></tr>");

            for (ProductBeanUser pb : al) {
                out.println("<tr>"
                        + "<td>" + pb.getCode() + "</td>"
                        + "<td>" + pb.getName() + "</td>"
                        + "<td>" + pb.getPrice() + "</td>"
                        + "<td>" + pb.getQty() + "</td>"
                        + "<td><a href='buy?pcode=" + pb.getCode() + "'>Buy</a></td>"
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