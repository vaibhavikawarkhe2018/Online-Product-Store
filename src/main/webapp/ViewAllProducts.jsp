<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="test.*,java.util.*"%>
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
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #4CAF50;
            padding: 10px;
            color: white;
        }
        .header a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }
        .header a:hover {
            text-decoration: underline;
        }
        .content {
            margin-top: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
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
        <div class="header">
            <div class="welcome-message">
                <%
                AdminBean ab = (AdminBean) session.getAttribute("abean");
                if (ab != null) {
                    out.print("Page belongs to Admin: " + ab.getfName());
                } else {
                    out.print("Page belongs to Admin");
                }
                %>
            </div>
            <div class="nav-links">
                <a href="logout">Logout</a>
            </div>
        </div>
        <div class="content">
            <h2>Product List</h2>
            <%
            ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("alist");
            if (al == null || al.size() == 0) {
                out.print("<p>No products available.</p>");
            } else {
            %>
            <table>
                <thead>
                    <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for (ProductBean pb : al) {
                    %>
                    <tr>
                        <td><%= pb.getCode() %></td>
                        <td><%= pb.getName() %></td>
                        <td><%= pb.getPrice() %></td>
                        <td><%= pb.getQty() %></td>
                        <td>
                            <a href="edit?pcode=<%= pb.getCode() %>">Edit</a>
                            &nbsp;|&nbsp;
                            <a href="delete?pcode=<%= pb.getCode() %>">Delete</a>
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>
            <%
            }
            %>
            <div class="nav-links">
                <a href="product.html">Add Product</a>
            </div>
        </div>
    </div>
</body>
</html>