

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css">
        <title>Spring CRUD</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Create New User</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>UID</label>
                        <input type="text" name="uid" class="form-control">
                        <label>First Name</label>
                        <input type="text" name="firstName" class="form-control">
                        <label>Last Name</label>
                        <input type="text" name="lastName" class="form-control">
                        <label>Email</label>
                        <input type="text" name="email" class="form-control">
                        <label>Telephone</label>
                        <input type="text" name="tp" class="form-control">
                        <br>
                        <input type="submit" value="Insert" class="btn btn-success">
                        <a href="index.htm"> View Users </a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
