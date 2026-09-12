<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Student</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
<div class="container">
    <h2>Edit Student</h2>
    <form action="/students/edit" method="post">
        <input type="hidden" name="id" value="${student.id}"/>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="${student.name}" required/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" value="${student.email}"/></td>
            </tr>
            <tr>
                <td>Course:</td>
                <td><input type="text" name="course" value="${student.course}"/></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type="text" name="phone" value="${student.phone}"/></td>
            </tr>
            <tr>
                <td>Enrollment Date:</td>
                <td><input type="date" name="enrollmentDate" value="${student.enrollmentDate}"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" class="btn">Update Student</button>
                    <a href="/students" class="btn btn-danger" style="text-decoration:none;">Cancel</a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>