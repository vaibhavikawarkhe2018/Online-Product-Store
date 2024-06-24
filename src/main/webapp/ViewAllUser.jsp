<%@ page language="java" 
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*,java.util.*"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h2 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .no-products {
            color: red;
        }
        .logout-link {
            display: block;
            margin-top: 20px;
            text-align: right;
        }
        .logout-button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .logout-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <%
        AdminBean ab = (AdminBean)session.getAttribute("abean");
        ArrayList<UserBean> al = (ArrayList<UserBean>)session.getAttribute("usersList");

        out.println("<h1>Welcome, " + ab.getfName() + "</h1>");

        if (al == null || al.size() == 0) {
            out.println("<p class='no-products'>No Product Available..</p>");
        } else {
            out.println("<h2>User Details:</h2>");
            out.println("<table>");
            out.println("<tr>"
                    + "<th>Username</th>"
                    + "<th>First Name</th>"
                    + "<th>Last Name</th>"
                    + "<th>Address</th>"
                    + "<th>Email</th>"
                    + "<th>Phone Number</th>"
                    + "</tr>");

            for (UserBean user : al) {
                out.println("<tr>"
                        + "<td>" + user.getUserName() + "</td>"
                        + "<td>" + user.getFirstName() + "</td>"
                        + "<td>" + user.getLastName() + "</td>"
                        + "<td>" + user.getAddress() + "</td>"
                        + "<td>" + user.getMailId() + "</td>"
                        + "<td>" + user.getPhoneNumber() + "</td>"
                        + "</tr>");
            }
            out.println("</table>");
        }
    %>
    <div class="logout-link">
        <form action="logout" method="post">
            <button type="submit" class="logout-button">Logout</button>
        </form>
    </div>
</body>
</html>
