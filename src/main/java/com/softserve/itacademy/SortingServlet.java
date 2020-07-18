package com.softserve.itacademy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/sortBy")

public class SortingServlet extends HttpServlet {
    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("sort").equals("asc"))
            addressBook.sortedBy(SortOrder.ASC);
        else if (request.getParameter("sort").equals("desc"))
            addressBook.sortedBy(SortOrder.DESC);
        response.sendRedirect("/records/list");
    }
}
