<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add Student</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
<div class="container">
    <h2>Add Student</h2>
    <form action="/students/add" method="post">
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" required/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email"/></td>
            </tr>
            <tr>
                <td>Course:</td>
                <td><input type="text" name="course"/></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type="text" name="phone"/></td>
            </tr>
            <tr>
                <td>Enrollment Date:</td>
                <td><input type="date" name="enrollmentDate"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" class="btn">Add Student</button>
                    <a href="/students" class="btn btn-danger" style="text-decoration:none;">Cancel</a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>