package com.example.library.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.example.library.dao.BookDAO;
import com.example.library.model.Book;

@WebServlet("/addBook")
public class BookServlet extends HttpServlet {
    private BookDAO bookDAO;

    public void init() {
        bookDAO = new BookDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        if (title == null || title.trim().isEmpty() || author == null || author.trim().isEmpty()) {
            request.setAttribute("error", "Title and author cannot be empty.");
            request.getRequestDispatcher("addBook.jsp").forward(request, response);
            return;
        }

        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        try {
            bookDAO.addBook(book);
            response.sendRedirect("bookList.jsp");
        } catch (Exception e) {
            request.setAttribute("error", "Failed to add book: " + e.getMessage());
            request.getRequestDispatcher("addBook.jsp").forward(request, response);
        }
    }
}