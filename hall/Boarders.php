<?php
   

   ob_start();
     session_start();
include "home.php";
include "function.php";
  
    $con=mysql_connect("localhost","root","");
	mysql_select_db("association",$con);
	
	$sql = "SELECT * FROM  `register`   ORDER BY `id` DESC";
	?>
	 <h3 style="color:green;background-color:black;margin: 0 470px;"> Members Descriptions</h3>
	 <?php
	   
	$result = @mysql_query($sql);
	
		if(@mysql_num_rows($result) > 0){
			?>
			<div class="container well">
		<table border="1" style="width:100%;margin-left:0px;padding:3px 25px">
		<div class="jam" style="background-color:pink">
             <tr style="background-color:pink;  height:40px;">
                   
                    <td style="padding:0 30px">username</td>		
                    <td style="padding:0 30px">email</td>
					
					
					
					
					
            </tr>
			</div>
			<?php
			
			while($row = @mysql_fetch_assoc($result)){
	
				?>
			
				<tr  style="padding:0 30px;background-color:lavender">
				  
				   <td style="padding:0 30px;"><?php echo  $row["username"]?> </td>
				   <td style="padding:0 30px"><?php echo  $row["email"]?> </td>
				   
				 </tr>
				
				<?php
				
			

		  }
		     ?>
		 </table>
		 <?php
		}
		else{
			echo "No Boarders....................";
		}
		?>
		</div>
		
	