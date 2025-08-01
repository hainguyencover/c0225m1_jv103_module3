package com.example.lesson9_webapplicationorverview;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "DiscountServlet", value = "/display_discount")
public class DiscountServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        double percent = Double.parseDouble(req.getParameter("percent"));


        double discountAmount =  price * percent * 0.01;
        double discountPrice = price - discountAmount;


        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<h1>Description: " + description + "</h1>");
        writer.println("<h1>Price: " + price + "</h1>");
        writer.println("<h1>Percent: " + percent + "%<h1>");
        writer.println("<h1>discountAmount: " + discountAmount + "</h1>");
        writer.println("<h1>discountPrice: " + discountPrice + "<h1>");
        writer.println("</html>");
    }
}