package org.obrii.mit.dp2021.Tools;

import org.obrii.mit.dp2021.Data.UserDataServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FormUD", urlPatterns = {"/form"})
public class FormUD extends HttpServlet {
    UserDataServlet userServlet = new UserDataServlet();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        userServlet.doDelete(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        userServlet.doPut(request, response);
    }

}