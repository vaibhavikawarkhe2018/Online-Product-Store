<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
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
            max-width: 600px;
        }
        .container h2 {
            margin-bottom: 20px;
            text-align: center;
        }
        .container .product-details {
            margin-bottom: 20px;
        }
        .container .product-details p {
            margin: 5px 0;
        }
        .container form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .container form input[type="text"] {
            padding: 10px;
            margin-bottom: 20px;
            width: 100%;
            max-width: 200px;
        }
        .container form input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .container form input[type="submit"]:hover {
            background-color: #45a049;
        }
        .container .nav-links {
            text-align: center;
            margin-top: 20px;
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
        <h2>Product Details</h2>
        <%
            UserBean ub = (UserBean) session.getAttribute("ubean");
            ArrayList<ProductBeanUser> al = (ArrayList<ProductBeanUser>) session.getAttribute("alist_u");
            String pCode = request.getParameter("pcode");

            if (al != null) {
                for (ProductBeanUser pb : al) {
                    if (pCode != null && pCode.equals(pb.getCode())) {
        %>
        <div class="product-details">
            <p><strong>Product Code:</strong> <%= pb.getCode() %></p>
            <p><strong>Product Name:</strong> <%= pb.getName() %></p>
            <p><strong>Product Price:</strong> <%= pb.getPrice() %></p>
            <p><strong>Product Quantity:</strong> <%= pb.getQty() %></p>
        </div>
        <form action="buyproduct" method="post">
            <input type="hidden" name="pcode" value="<%= pb.getCode() %>">
            <label for="req">Required Quantity:</label>
            <input type="text" id="req" name="req" required>
            <input type="submit" value="Buy Product">
        </form>
        <%
                        break;
                    }
                }
            } else {
                out.println("<p>No product details available.</p>");
            }
        %>
        <div class="nav-links">
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>