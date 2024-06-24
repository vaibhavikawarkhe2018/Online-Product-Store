<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="test.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
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
            width: 300px;
            text-align: center;
        }
        .container h2 {
            margin-bottom: 20px;
        }
        .container input[type="text"],
        .container input[type="number"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .container input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Product</h2>
        <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("alist");
        String pCode = request.getParameter("pcode");

        if (ab != null && al != null && pCode != null) {
            Iterator<ProductBean> it = al.iterator();
            while (it.hasNext()) {
                ProductBean pb = it.next();
                if (pCode.equals(pb.getCode())) {
        %>
        <form action="update" method="post">
            <input type="hidden" name="pcode" value="<%= pb.getCode() %>">
            <input type="text" name="price" value="<%= pb.getPrice() %>" placeholder="Product Price" required><br>
            <input type="number" name="qty" value="<%= pb.getQty() %>" placeholder="Product Quantity" required><br>
            <input type="submit" value="Update Product">
        </form>
        <%
                    break;
                }
            }
        } else {
            out.print("<p>Invalid product or session. Please try again.</p>");
        }
        %>
    </div>
</body>
</html>