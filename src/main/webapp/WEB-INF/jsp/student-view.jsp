<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Student Details</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
<div class="container" style="max-width: 500px;">
    <h2>Student Details</h2>
    <table>
        <tr><td><strong>ID</strong></td><td>${student.id}</td></tr>
        <tr><td><strong>Name</strong></td><td>${student.name}</td></tr>
        <tr><td><strong>Email</strong></td><td>${student.email}</td></tr>
        <tr><td><strong>Course</strong></td><td>${student.course}</td></tr>
        <tr><td><strong>Phone</strong></td><td>${student.phone}</td></tr>
        <tr><td><strong>Enrollment Date</strong></td><td>${student.enrollmentDate}</td></tr>
    </table>
    <div style="margin-top: 20px;">
        <a href="/students" class="btn">Back to List</a>
    </div>
</div>
</body>
</html>