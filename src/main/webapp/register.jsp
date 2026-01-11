<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>EventSphere - Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    background-color: #f7f9fc;
}
.card {
    border-radius: 15px;
    box-shadow: 0 5px 25px rgba(0,0,0,0.2);
}
</style>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center" style="height: 90vh;">
    <div class="card p-5" style="width: 400px;">
        <h2 class="text-center mb-4">Register at EventSpace</h2>
        <form action="register" method="post">
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" name="email" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" class="form-control" name="password" required>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-success">Register</button>
            </div>
            <p class="mt-3 text-center">Already have an account? <a href="login.jsp">Login</a></p>
        </form>
    </div>
</div>
</body>
</html>
