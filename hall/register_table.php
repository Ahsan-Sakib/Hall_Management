<?php
	
	$username=$_POST['username'];
	$password=$_POST['pass'];
	
	
	$email=$_POST['email'];
	
	$con=mysql_connect("localhost","root","");
	mysql_select_db("association",$con);
	
	
		$sql1="SELECT * FROM register WHERE username = '$username' OR email = '$email' ";
	$result=mysql_query($sql1);
	if($result){
	while($row = mysql_fetch_array($result)){
		
			
			
			header('Location:register.php?error=s');
			die();
			
		
	}
	}
	$sql="INSERT INTO register (username,password)VALUES('$username','$password')";
		mysql_query($sql,$con);
	
	header("location:Project.php?error='YouRegisteredsuccessfully' ");
	
	
?>