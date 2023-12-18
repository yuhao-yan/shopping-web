<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<h3 style="text-align: center">用户登录</h3>
<form action="doLogin.jsp" method="post">
    <table border="1" cellpadding="10" style="margin: 0px auto">
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
                <input type="submit" value="登录"/>
                <input type="reset" value="重置"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>