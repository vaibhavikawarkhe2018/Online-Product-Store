<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }
        .message {
            background: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
            margin-bottom: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%
        String msg = (String) request.getAttribute("msg");
        String fname = (String) request.getAttribute("fname");
        if (msg != null && fname != null) {
    %>
    <div class="message">
        <%= fname %> <%= msg %>
    </div>
    <%
        }
    %>
    
    <%@include file="UserLogin.html" %>
</body>
</html>
