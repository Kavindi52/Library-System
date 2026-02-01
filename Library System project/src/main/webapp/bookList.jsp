<%@ page import="java.util.List, com.example.library.dao.BookDAO, com.example.library.model.Book" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
</head>
<body>
    <h2>Book List</h2>
    <%
        List<Book> books = new BookDAO().searchBooks("");
        for (Book book : books) {
    %>
        <p><%= book.getTitle() %> - <%= book.getAuthor() %></p>
    <%
        }
    %>
    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>