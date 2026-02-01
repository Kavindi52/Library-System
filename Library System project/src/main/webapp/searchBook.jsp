<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Books</title>
    <script src="js/validation.js"></script>
    <style>
        #results { margin-top: 10px; }
    </style>
</head>
<body>
    <h2>Search Books</h2>
    <input type="text" id="searchBox" onkeyup="searchBooks()" placeholder="Search books...">
    <div id="results"></div>
    <a href="dashboard.jsp">Back to Dashboard</a>
</body>
</html>