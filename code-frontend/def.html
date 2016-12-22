<html>
	<head>
		<title>
			Stock Market
		</title>
		<style>
		p{
			font-family:Jambo;
			font-size:20px;
			color:white;
			text-align:center;
			padding-top:10%;
		}
        .span{
              
                 font-family:Jambo;
			font-size:20px;
			color:white;
			text-align: center;
            position: absolute;
			top:30%;
			left:45%;

        }
		body{
		
		background-color:#558C89;
        }
		
		table{
			left:45%;
			top:35%;
			position: absolute;
			border-collapse: collapse;
				border:1px solid black;
		}
		td,th{
			 background-color: #31bc86;
			color:black;
			font-size:20px;
			padding:0;
			margin:0;
		}
        tbody tr:hover {
    background-color: rgba(129,208,177,.3);
      }
      

		</style>
		<head>
		<body >
		 
  <?php
$con = mysqli_connect("localhost", "root", "", "stock market");
	if(!$con)
	{
		die("Connection failed: " . $con->connect_error);
	}
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$brokerid = $_POST['brokerselect'];
	$traderid = $_POST['traderselect'];
	$stockid = $_POST['stockselect'];
	$volume = $_POST['volume'];
	$bid = $_POST['bid'];
	$sql = "select * from `works for` where Broker_id = $brokerid AND Trader_id = $traderid";

	$result1 = mysqli_query($con, $sql);
	
	}   
	?>	
	
	    <?php
	     if(mysqli_num_rows($result1)== 0)
          {    
          	 echo '<p>'.'Broker does not work for this trader'.'</p>';
	      
	      }
	    else if(mysqli_num_rows($result1)> 0)
	    {
	            	$sql1 = "insert into  `transaction` (`Bid`, `Stock_Id`, `Broker_Id`, `Volume`) VALUES ($bid, $stockid, $brokerid, $volume)";
	                $sql2  = "select Volume from owns where Trader_id =$traderid AND Stock_id = $stockid";
	                mysqli_query($con, $sql1);
	                $result2 = mysqli_query($con, $sql2);
	            if(mysqli_num_rows($result2)== 0)
                {
                	  $sql3 = "insert into `owns` (`Trader_id`, `Stock_id`, `Volume`) VALUES ($traderid, $stockid, $volume)";   
	                   mysqli_query($con, $sql3);
                }
	            else
	            {	
                    $row1 = $result2->fetch_assoc(); 
					
	            	$newvolume = $volume + $row1['Volume'];  
	                $sql4 = "update owns set volume = $newvolume where Stock_id = $stockid and Trader_id = $traderid";
	                 mysqli_query($con, $sql4);
	            }
	           $sql7 = "select Stock_id,Volume from owns where Trader_id = $traderid";
	           $result4 =   mysqli_query($con, $sql7);
	           echo '<p>'.'Trader id is: <strong>'. $traderid.'</strong></p><br/>';
	           echo '<span class = "span">'.'Stocks owned by you'.' </span><br/>';
	           ?>
	           <table align = 'center' border = '1'>
      			<tr>   
					<th> Stock Id</th>
					<th> Volume </th>
				</tr>
	    		<tr>   
         	<?php
               while ($row3 = $result4->fetch_assoc()) {
	    		echo '<th>'.$row3['Stock_id'].' </th>'; 
	    		echo '<td>'.$row3['Volume'].'</th>';
				echo '</tr>';  
	    	}
	           echo '</table>';    

	           $sql5 = "select Volume from company where Stock_Id = $stockid";
	           $result3 = mysqli_query($con, $sql5);
               $row2 = $result3->fetch_assoc(); 
	            $volume = $row2['Volume']-$volume;  
             $sql6 = "update company set Volume = $volume where Stock_Id = $stockid";
	         mysqli_query($con, $sql6);
	         $sql8 = "update company c INNER JOIN transaction t ON c.Stock_Id = t.Stock_id INNER JOIN stock s ON s.Stock_Id = t.Stock_id set c.Net_Worth = c.Net_Worth - (t.Volume * s.CurrentPrice) where c.Stock_Id = $stockid";
	         mysqli_query($con, $sql8);
		      $sql9 = "update company c INNER JOIN transaction t ON c.Stock_Id = t.Stock_id set c.Net_Worth = c.Net_Worth + (t.Volume * t.Bid) where c.Stock_Id = $stockid";
	         mysqli_query($con, $sql9);
		     $sql10 = "update stock s INNER JOIN company c ON s.Stock_Id = c.Stock_Id set s.CurrentPrice = (c.Net_Worth / c.Volume) where s.Stock_Id = $stockid";
	         mysqli_query($con, $sql10);
		}
	?>	  
</body>
</html>
