<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h2>Welcome, <%= ((com.example.library.model.User) session.getAttribute("user")).getRole() %>!</h2>
    <a href="searchBook.jsp">Search Books</a><br/>
    <% if ("Admin".equals(((com.example.library.model.User) session.getAttribute("user")).getRole())) { %>
        <a href="addBook.jsp">Add Book</a><br/>
    <% } %>
    <a href="logout">Logout</a>
</body>
</html>