<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="test.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Notification</title>
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
            text-align: center;
            width: 300px;
        }
        .container h2 {
            margin-bottom: 20px;
        }
        .message {
            margin-bottom: 20px;
            color: #333;
        }
        .nav-links {
            margin-top: 10px;
        }
        .nav-links a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .nav-links a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        
        <div class="message">
            <%
            AdminBean ab = (AdminBean) session.getAttribute("abean");
            String msg = (String) request.getAttribute("msg");
            if (msg != null) {
                out.print(msg);
            } else {
                out.print("No message available.");
            }
            %>
        </div>
        <div class="nav-links">
            <a href="product.html">Add Product</a>
            <a href="view1">View All Products</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
