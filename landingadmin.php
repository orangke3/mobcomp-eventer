<?php
	@session_start();
	include "conn.php";
	$email = $_SESSION['user'];
	if($_SESSION['user'] || $_SESSION['admin'])
	{
		$sql = "SELECT * FROM users where email='$email'";
		$result = mysqli_query($db, $sql);
		$num = mysqli_num_rows($result);
		$row = mysqli_fetch_assoc($result);
		?>

<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    

<title>Landing Page</title>
</head>

<body class="grey lighten-2">
    
<nav class="teal" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="#" class="left2 brand-logo">Eventer</a>
      <ul class="right hide-on-med-and-down">
        <li><a href="#">Search Event</a></li>
        <li><a href="#">Add Event</a></li>
        <li><a href="#">Your Event</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Sign out</a></li>    
      </ul>

      <ul id="nav-mobile" class="side-nav">
          <li>
          <div class="teal section">
              <a href="#" class="left white-text"><i class="material-icons">settings</i></a>
              <div class="clearfix center">
              <img src="img/fotoprofil.jpg" class="pp circle">             
              <p class="mp center-align white-text"><b><?php echo ''.$row['name'];?></b></p>
              </div>
              </div>
          
          
          </li>
        <li><a href="search.php">Search Event<i class="material-icons">search</i></a></li>
        <li><a href="addevent.php">Add Event<i class="material-icons">add_box</i></a></li>
        <li><a href="yourevent.php">Your Event<i class="material-icons">event</i></a></li>
        <li><a href="about.php">About<i class="material-icons">info</i></a></li>
        <li><a href="logout.php">Sign out<i class="material-icons">exit_to_app</i></a></li>
      </ul>
        <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
        <a href="search.php" data-activates="nav-mobile" class="right"><i class="material-icons">search</i></a>
    </div>
  </nav>
        
   
 <div class="container">        
      
	 <?php
		$sql = "SELECT * FROM event order by tanggal asc";
		$result = mysqli_query($db, $sql);
		$num = mysqli_num_rows($result);
	
		
		//$row = mysqli_fetch_assoc($result);
		//if($row > 0){
		while($row = mysqli_fetch_array($result)){
			
			$_SESSION['row'] = $row;
			
			?>
			<a href="detailevent.php?idn=<?php echo ''.$row['id_event'];?>"><div class="row"><div class="col s12 m7"><div class="card"><div class="card-image"><img src="">
			<span class="black-text price">
			<?php 
			if($row['harga'] > 0){echo ''.$row['harga'];}
			else{echo 'FREE';}?></span></div>
			<div class="card-content"><p class="grey-text"><?php echo ''.$row['tanggal'];?></p><h6><b><?php echo ''.$row['nama_event'];?></b></h6>
			<p class="grey-text"><?php echo ''.$row['lokasi'];?></p></div>
			<div class="card-action"><a href="#" class="grey-text">#Music</a>
						<a href="#" class="grey-text">#Jazz</a>
						<a href="#" class="right grey-text"><i class="material-icons">notifications</i></a>
						<a href="#" class="right grey-text"><i class="midalign material-icons">person</i>250</a>
					</div>
				  </div>
				</div>
			  </div>
			 </a>
			<?php
		}	 
	 ?>
     
     
     
</div>
    
    <div class="teal-text center2 filter">
    
    <form method="post" action="filtertab.php">


<button class="white btn-filter" type="submit" name="filter">FILTER </button>    
    
</form>
    </div>
    
    
    
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="js/materialize.js"></script>
<script src="js/init.js"></script>
    
</body>
</html>
<?php
	}
	else
	{
		header("location:login.php");
	}
?>