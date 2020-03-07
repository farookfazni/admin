<?php
include('server.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register for admin</title>
    <!---bootstrap cdn----->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!---fontawsome cdn----->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
    <link rel="stylesheet" href="admin_login.css">
</head>
<body>

<!---display validation errors in here-->
<?php include('errors.php');?>

    <form method="post" action="register_admin.php">
    <div class="login-box">

        <h1>Register</h1>

        
        <div class="textbox">
            <i class="fas fa-user"></i>
            <input type="text" placeholder="username" name="username" value="">
        </div>
        <div class="textbox">
            <i class="far fa-user"></i>
            <input type="text" placeholder="firstname" name="fname" value="">
        </div>
        <div class="textbox">
            <i class="far fa-user"></i>
            <input type="text" placeholder="lastname" name="lname" value="">
        </div>
        <div class="textbox">
            <i class="fas fa-envelope"></i>
            <input type="text" placeholder="email" name="email" value="">
        </div>

        <div class="textbox">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="password" name="pasword" value="">
        </div>
        <div class="textbox">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Confirm password" name="cpasword" value="">
        </div>

        <div>
        <button type="submit" name="register" class="btn">Register</button>
        </div>

         
</form>
    </div>
    
<!---javaScript cdn----->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>