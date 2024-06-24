<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="test.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1000px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #343a40;
            padding: 15px;
            border-radius: 8px 8px 0 0;
            color: #ffffff;
        }
        .header .welcome-message {
            font-size: 1.2em;
        }
        .header a {
            color: #ffffff;
            text-decoration: none;
            margin: 0 15px;
        }
        .header a:hover {
            text-decoration: underline;
        }
        .content {
            margin-top: 20px;
        }
        .nav-links {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-top: 20px;
        }
        .nav-links a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .nav-links a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="welcome-message">
                <%
                AdminBean ab = (AdminBean) session.getAttribute("abean");
                if (ab != null) {
                    out.print("Welcome Admin " + ab.getfName());
                } else {
                    out.print("Welcome Admin");
                }
                %>
            </div>
            <div>
                <a href="logout">Logout</a>
            </div>
        </div>
        <div class="content">
            <div class="nav-links">
                <a href="product.html">Add Product</a>
                <a href="view1">View All Products</a>
                <a href="vieworders">View All Orders</a>
                <a href="viewUsers">View All Users</a>
            </div>
        </div>
    </div>
</body>
</html>
