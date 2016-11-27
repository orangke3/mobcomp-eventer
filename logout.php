<?php
  
	header("refresh:1;url=login.php");
	
    session_start();
	session_destroy();
	setcookie("PHPSESSID",session_id(),time()-1);

?>

<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    

<title>LOGOUT</title>
</head>

<body>
    
<nav class="noshadow">
    <div class="white nav-wrapper">
        <a href="#" class="black-text brand-logo light">LOG OUT</a>
    </div>
</nav> 

 <div class="container">
 <p style="text-align:center">Logged out successfully</p>
	</div>
	