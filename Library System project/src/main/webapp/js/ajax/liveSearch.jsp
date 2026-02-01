<%@ page import="java.util.List, com.example.library.dao.BookDAO, com.example.library.model.Book" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String q = request.getParameter("q");
    List<Book> books = new BookDAO().searchBooks(q);
    for (Book book : books) {
%>
    <p><%= book.getTitle() %> - <%= book.getAuthor() %></p>
<%
    }
%>