<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.InputStreamReader" %>
<%@ page import="java.io.FileWriter" %>

<%
    String username = request.getParameter("username");
    String account = request.getParameter("account");
    String password = request.getParameter("password");
    String path = "E:\\tomat\\apache-tomcat-9.0.82\\webapps\\ROOT\\user_info.txt";
    FileInputStream fis = new FileInputStream(path);
    BufferedReader br = new BufferedReader(new InputStreamReader(fis));
    String line;
    boolean found = false;
    while ((line = br.readLine()) != null) {
        PrintWriter outputstr = response.getWriter();
        String []word = line.split(",");
        if (word[1].equals(username) && word[2].equals(password)) {
            found = true;
        }
    }
    fis.close();
    br.close();
    if (!found) {
            out.println("<script>alert('Register successful!');</script>");
            FileWriter writer = new FileWriter(path, true);
            writer.write("\n"+username+","+account+","+password);
            writer.close();
            out.println("<script>window.location.href='index.jsp';</script>");
        } else {
            out.println("<script>alert('Invalid username!');</script>");
            out.println("<script>window.location.href='register.jsp';</script>");
        }
%>