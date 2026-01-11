<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>EventSpace - Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            min-height: 100vh;
            color: white;
            font-family: 'Segoe UI', sans-serif;
        }
        .hero {
            height: 90vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .hero h1 {
            font-size: 4rem;
            margin-bottom: 1rem;
        }
        .hero p {
            font-size: 1.5rem;
            margin-bottom: 2rem;
        }
        .btn-custom {
            margin: 0 1rem;
            padding: 0.75rem 2rem;
            font-size: 1.2rem;
            border-radius: 50px;
            border: none;
        }
        .btn-login {
            background-color: #ff7f50;
            color: white;
        }
        .btn-register {
            background-color: #32cd32;
            color: white;
        }
        footer {
            position: absolute;
            bottom: 10px;
            width: 100%;
            text-align: center;
            color: #ffffff99;
        }
    </style>
</head>
<body>

<div class="hero">
    <h1>Welcome to EventSpace</h1>
    <p>Where every event finds its vibe</p>
    <div>
        <a href="login.jsp" class="btn btn-custom btn-login">Login</a>
        <a href="register.jsp" class="btn btn-custom btn-register">Register</a>
    </div>
</div>

<footer>
    &copy; 2026 EventSpace. All rights reserved.
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    