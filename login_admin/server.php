<?php error_reporting (E_ALL ^ E_NOTICE); ?>

<?php

$fname="";
$lname="";
$username ="";
$email="";
$errors = array();


// connect to database
$db = mysqli_connect('localhost','root','','registeruser');


//if the register button is clicked
if(isset($_POST['register'])){
    $username = mysqli_real_escape_string($db,$_POST['username']);
    $fname = mysqli_real_escape_string($db,$_POST['fname']);
    $lname = mysqli_real_escape_string($db,$_POST['lname']);
    $email = mysqli_real_escape_string($db,$_POST['email']);
    $password = mysqli_real_escape_string($db,$_POST['pasword']);
    $cpassword = mysqli_real_escape_string($db,$_POST['cpasword']);

    //asure that form field are filled properly
    if(empty($username)){
        array_push($errors, "Username is required");
    }
    if(empty($fname)){
        array_push($errors, "firstname is required");
    }
    if(empty($lname)){
        array_push($errors, "lastname is required");
    }
    if(empty($email)){
        array_push($errors, "email is required");
    }
   
    //checking wether two passwords are correct
    if($password !== $cpassword){
        array_push($errors, "The two passwords do not match");
    }

    //if there are no erors save user to database
    if(count($errors) == 0){
        $password=md5($password); //encrypt password before storing in database
        $sql="INSERT INTO admins (username , fname , lname , email , pasword , cpasword) VALUES ('$username' , '$fname' , '$lname' , '$email' , '$password' , '$cpassword')";
        mysqli_query($db,$sql);
        
        }
       
}

?>