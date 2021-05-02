<?php
session_start();
include('include/connection.php');

if (isset($_POST['email']))
{
    $adminMail = $_POST['email'];
}

if (isset($_POST['password']))
{
    $adminPass = $_POST['password'];
}

if (isset($_POST['log']))
{
    $login = $_POST['log'];
}

if(isset($login)){
  if(empty($adminMail) || empty($adminPass)){
    echo "<div class='alert alert-danger'>"."الرجاء إدخال البريد الإلكتروني وكلمة السر"."</div>";
  }else{
    $query = "SELECT * FROM admin WHERE email='$adminMail' AND password='$adminPass'";
    $res = mysqli_query($con,$query);
    $row = mysqli_fetch_assoc($res);

if(in_array($adminMail,$row) && in_array($adminPass,$row)){
  echo "<div class='alert alert-success'>"."مرحباّّ"."</div>";
  $_SESSION['id'] = $row['id'];
  header('REFRESH:2;URL=categories.php');
}else{
  echo "<div class='alert alert-danger'>"."البيانات غير صحيحة"."</div>";
}
  }
}
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>تسجيل الدخول</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css\bootstrap.min.css">
    <link rel="stylesheet" href="css\bootstrap-rtl.css">
    <link rel="stylesheet" href="css\dashboard.css">
    <style>
      .login{
        width:300px;
        margin:80px auto;
      }
      .login h5{
        color:#555;
        margin-bottom:20px;
        text-align:center;
      }
.login button{
  margin-right:80px;
}
    </style>
  </head>
  <body>
<div class="login">
  <form class="" action="login.php" method="post">

    <h5>تسجيل الدخول</h5>

    <div class="form-group">
<label for="mail">البريد الإلكتروني</label>
<input class="form-control" type="text" id="mail" name="email">
    </div>

    <div class="form-group">
<label for="pass">كلمة السر</label>
<input class="form-control" type="text" id="pass" name="password">
    </div>
<button class="btn-custom" name="log">تسجيل الدخول</button>
  </form>
</div>
  <!-- Jquery and Bootstrap.js -->

  <script src="js\jquery-3.5.1.min.js"></script>
  <script src="js\bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/971834318e.js" crossorigin="anonymous"></script>
  </body>
</html>
