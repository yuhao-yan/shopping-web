<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%
    String imgSrc = request.getParameter("imgSrc");
    String imgName = request.getParameter("imgName");
    String value = request.getParameter("value");
    String fileName = "E:\\tomat\\apache-tomcat-9.0.82\\webapps\\ROOT\\car.txt";
    FileWriter fw = new FileWriter(fileName, true);
    BufferedWriter bw = new BufferedWriter(fw);
    bw.write(imgSrc + "," + imgName + "," + value +  "\n");
    bw.newLine();
    bw.close();
%>