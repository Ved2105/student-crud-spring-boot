<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Student List</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
<div class="container">
    <div class="top-bar">
        <h2>Student List</h2>
        <a href="/students/add" class="btn">+ Add Student</a>
    </div>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Course</th>
            <th>Phone</th>
            <th>Enrollment Date</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.course}</td>
                <td>${student.phone}</td>
                <td>${student.enrollmentDate}</td>
                <td class="action-links">
                    <a href="/students/view/${student.id}">View</a>
                    <a href="/students/edit/${student.id}">Edit</a>
                    <a href="/students/delete/${student.id}" class="delete">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>