<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
<div class="container" style="max-width: 400px; margin-top: 80px;">
    <h2>Login</h2>
    <% if (request.getAttribute("error") != null) { %>
        <p style="color: red;"><%= request.getAttribute("error") %></p>
    <% } %>
    <form action="/login" method="post">
        <table>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" required/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" required/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" class="btn">Login</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>