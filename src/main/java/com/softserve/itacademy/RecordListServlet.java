package com.softserve.itacademy;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/list")
public class RecordListServlet extends HttpServlet {

    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = addressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/records-list.jsp");
        requestDispatcher.forward(request, response);
    }
}
