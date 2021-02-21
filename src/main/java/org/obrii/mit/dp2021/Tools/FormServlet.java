package org.obrii.mit.dp2021.Tools;

import org.obrii.mit.dp2021.interfaces.IContainer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FormServlet", urlPatterns = {"/form"})
public class FormServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        IContainer items = new ItemsContainer();

        request.setAttribute("items", items);
        request.getRequestDispatcher("form.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Parameter parameter = new Parameter(
                request.getParameter("name"),
                request.getParameter("email"),
                request.getParameter("item")
                );

        request.setAttribute("parameter", parameter);
        request.getRequestDispatcher("final.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
