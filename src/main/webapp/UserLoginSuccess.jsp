<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 0;
            margin-top: 5cm;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: gray;
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
        .nav-links a {
            display: inline-block;
            padding: 10px 20px;
            background-color: threedhighlight;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .nav-links a:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="welcome-message">
                <% 
                UserBean ub = (UserBean) session.getAttribute("ubean");
                if (ub != null) {
                    out.print("Welcome, " + ub.getFirstName());
                } else {
                    out.print("Welcome, Guest");
                }
                %>
            </div>
            <div class="nav-links">
                <a href="logout">Logout</a>
                <a href="view2">View All Products</a>
            </div>
        </div>
        <div class="content">
            <!-- Additional content can be added here -->
        </div>
    </div>
</body>
</html>
