package com.example.assignmenthttpsession;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw=response.getWriter();
        HttpSession session=request.getSession(false);
        if(session!=null){
            RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
            rd.forward(request,response);
        }
        else{
            response.sendRedirect("usernotloggedin.jsp");
            return;
        }
        pw.close();
    }
}