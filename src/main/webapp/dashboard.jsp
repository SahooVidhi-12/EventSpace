<%@ page session="true" import="jakarta.servlet.*, jakarta.servlet.http.*" %>
<%
    // Use the implicit session object
    String name = null;
    if (session != null) {
        name = (String) session.getAttribute("userEmail");
    }

    if (name == null) {
        // User not logged in, redirect to login page
        response.sendRedirect("login.jsp");
        return; // stop executing the rest of the page
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>EventSphere - Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background: #f4f6f9;
    font-family: 'Segoe UI', sans-serif;
}
.navbar {
    background-color: #6a11cb;
}
.navbar a {
    color: white !important;
    font-weight: 500;
}
.card {
    border-radius: 15px;
    box-shadow: 0 5px 25px rgba(0,0,0,0.1);
}
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark px-5">
    <a class="navbar-brand" href="#">EventSpace</a>
    <div class="ms-auto d-flex align-items-center">
        <span class="text-white me-3">Welcome, <%= name %>!</span>
        <a href="logout" class="btn btn-outline-light btn-sm">Logout</a>
    </div>
</nav>

<div class="container mt-5">
    <div class="row g-4">
        <!-- Create Event Card -->
        <div class="col-md-4">
            <div class="card p-4">
                <h4>Create Event</h4>
                <p>Plan and create your event.</p>
                <a href="addEvent.jsp" class="btn btn-primary">Create</a>
            </div>
        </div>

        <!-- View Events Card -->
        <div class="col-md-4">
            <div class="card p-4">
                <h4>View Events</h4>
                <p>See all your upcoming events.</p>
                <a href="viewEvents" class="btn btn-success">View</a>
            </div>
        </div>

        <!-- Profile Card -->
        <div class="col-md-4">
            <div class="card p-4">
                <h4>Profile</h4>
                <p>Update your personal information.</p>
                <a href="profile.jsp" class="btn btn-warning">Update</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
