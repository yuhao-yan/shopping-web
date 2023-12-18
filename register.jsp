
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<h3 style="text-align: center">用户注册</h3>
<form action="doRegister.jsp" method="post">
    <table border="1" cellpadding="10" style="margin: 0px auto">
        <tr>
            <td align="center">用户名</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td align="center">账号</td>
            <td><input type="text" name="account"/></td>
        </tr>
        <tr>
            <td align="center">密码</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="注册"/>
                <input type="reset" value="重置"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>