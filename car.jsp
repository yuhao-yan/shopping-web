<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.*" %>
<%
    String fileName = "E:\\tomat\\apache-tomcat-9.0.82\\webapps\\ROOT\\car.txt";
    File file = new File(fileName);
    BufferedReader br = new BufferedReader(new FileReader(file));
    String line;
    String parts[];
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>


<table class="styled-table">
    <thead>
        <tr>
            <th>图片</th>
            <th>名称</th>
            <th>价格</th>
            <th>操作</th>
        </tr>
    </thead>
    <tbody>
        <% while ((line = br.readLine()) != null) {
            parts = line.split(",");
        %>
        <tr>
            <td><img src="<%= parts[0] %>" alt=""></td>
            <td><%= parts[1] %></td>
            <td><%= parts[2] %></td>
            <td><button onclick="deleteRow(this)">删除</button></td>
        </tr>
        <% } %>
    </tbody>
</table>
<%
    br.close();
%>

<style>
    .styled-table {
        border-collapse: collapse;
        margin: 25px 0;
        font-size: 0.9em;
        font-family: sans-serif;
        min-width: 400px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }

    .styled-table thead tr {
        background-color: #009879;
        color: #ffffff;
        text-align: left;
    }

    .styled-table th,
    .styled-table td {
        padding: 12px 15px;
    }

    .styled-table tbody tr {
        border-bottom: 1px solid #dddddd;
    }

    .styled-table tbody tr:nth-of-type(even) {
        background-color: #f3f3f3;
    }

    .styled-table tbody tr:last-of-type {
        border-bottom: 2px solid #009879;
    }

    .styled-table tbody tr.active-row {
        font-weight: bold;
        color: #009879;
    }
</style>

<script>
    function deleteRow(btn) {
        var row = btn.parentNode.parentNode;
        var rowIndex = row.rowIndex - 1;
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                location.reload();
            }
        };
        xhr.open("POST", "delete.jsp?rowIndex=" + rowIndex, true);
        xhr.send();
    }
</script>