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
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }
        h1, p {
            color: #333;
        }
        .total-amount {
            font-size: 1.5em;
            color: #333;
            margin: 20px 0;
        }
        .payment-link, .logout-link {
            display: inline-block;
            margin: 20px 10px;
            padding: 10px 20px;
            color: white;
            background-color: #007BFF;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .payment-link:hover, .logout-link:hover {
            background-color: #0056b3;
        }
        .page-info {
            margin: 20px 0;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            UserBean ub = (UserBean)session.getAttribute("ubean");
            ArrayList<ProductBeanUser> al = (ArrayList<ProductBeanUser>)session.getAttribute("alist_u");
            String pCode = request.getParameter("pcode");
            out.println("<h1>Welcome, " + ub.getFirstName() + "</h1>");
            out.println("<div class='page-info'>Page Belongs to User: " + ub.getFirstName() + "</div>");
            int rQty = Integer.parseInt(request.getParameter("req"));
            Iterator<ProductBeanUser> it = al.iterator();
            while (it.hasNext()) {
                ProductBeanUser pb = (ProductBeanUser)it.next();
                if (pb.getCode().equals(pCode)) {
                    out.println("<div class='total-amount'>Total Amount: $" + (pb.getPrice() * rQty) + "</div>");
                    out.println("<a href='payment?pcode=" + pCode + "&required=" + rQty + "' class='payment-link'>Proceed to Payment</a>");
                    break;
                }
            }
        %>
        <a href="logout" class="logout-link">Logout</a>
    </div>
</body>
</html>
