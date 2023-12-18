<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.InputStreamReader" %>

<%
    String account = request.getParameter("account");
    String password = request.getParameter("password");
    FileInputStream fis = new FileInputStream("E:\\tomat\\apache-tomcat-9.0.82\\webapps\\ROOT\\user_info.txt");
    BufferedReader br = new BufferedReader(new InputStreamReader(fis));
    String line;
    while ((line = br.readLine()) != null) {
        PrintWriter outputstr = response.getWriter();
        // out.println(line);
        String []word = line.split(",");
        // out.println(word[0]+","+word[1]+","+word[2]);
        boolean found = false;
        if (word[1].equals(account) && word[2].equals(password)) {
            found = true;
        }
        if (found) {
            out.println("<script>alert('Login successful!');</script>");
            session.setAttribute("username", word[0]);
            response.sendRedirect("index.jsp");
            out.println("<script>window.location.href='index.jsp';</script>");
        } else {
            out.println("<script>alert('Invalid account or password!');</script>");
            out.println("<script>window.location.href='login.jsp';</script>");
        }
    }
    fis.close();
    br.close();
%>