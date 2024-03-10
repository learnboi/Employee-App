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
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession(false);
        if(session!=null){
            RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
            rd.forward(request,response);
//            String username=(String)session.getAttribute("username");
//            out.print("<h1>Hello, "+username+" Welcome to Profile</h1>");
//            out.print("<a href='link.jsp'><button>Homepage</button><a>&nbsp;");
//            out.print("<a href='logout'><button>Logout</button></a>");
//            request.getRequestDispatcher("link.jsp");
        }
        else{
            out.print("<h1>Please login first</h1>");
        }
        out.close();
    }
}