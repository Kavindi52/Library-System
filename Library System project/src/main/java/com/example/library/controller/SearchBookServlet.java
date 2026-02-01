package com.example.library.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.example.library.dao.BookDAO;
import com.example.library.model.Book;

@WebServlet("/searchBook")
public class SearchBookServlet extends HttpServlet {
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("q");
        if (query == null || query.trim().isEmpty()) {
            request.getRequestDispatcher("searchBook.jsp").forward(request, response);
            return;
        }

        response.setContentType("text/html; charset=UTF-8");
        List<Book> books = bookDAO.searchBooks(query);
        if (books.isEmpty()) {
            response.getWriter().write("<p>No books found.</p>");
        } else {
            for (Book book : books) {
                response.getWriter().write("<p>" + book.getTitle() + " - " + book.getAuthor() + "</p>");
            }
        }
    }
}