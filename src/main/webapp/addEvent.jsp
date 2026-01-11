<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if (session.getAttribute("userEmail") == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Add Event</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
<h3>Add New Event</h3>
<form action="<%= request.getContextPath() %>/addEvent" method="post">
    <input type="text" name="title" class="form-control mb-2" placeholder="Event Title" required>
    <textarea name="description" class="form-control mb-2" placeholder="Description"></textarea>
    <input type="date" name="date" class="form-control mb-3" required>
    <button class="btn btn-success">Add Event</button>
</form>
<a href="dashboard.jsp" class="btn btn-secondary mt-3">Back</a>
</div>
</body>
</html>
