<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
    <script src="js/validation.js"></script>
    <style>
        .error { color: red; }
    </style>
</head>
<body>
    <h2>Add a New Book</h2>
    <% if (request.getAttribute("error") != null) { %>
        <div id="error" class="error"><%= request.getAttribute("error") %></div>
    <% } else { %>
        <div id="error" class="error"></div>
    <% } %>
    <form action="addBook" method="post" onsubmit="return validateBookForm()">
        Title: <input type="text" name="title" id="title"><br/>
        Author: <input type="text" name="author" id="author"><br/>
        <input type="submit" value="Add Book">
    </form>
    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>