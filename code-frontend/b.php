<?php
session_start();
$con = mysqli_connect("localhost", "root", "", "stock market");
	if(!$con)
	{
		die("Connection failed: " . $conn->connect_error);
	}
	
?>
<html>
	<head>
		<title>
			Stock Market
		</title>
		<style>
		
		body{
		
		background-color:#558C89;

		}
		#go{
			font-family:Jambo;
			font-size:20px;
			color:white;
			text-align:center;
			padding-top:10%;
		}
		
		input[type='text']
		 {
			 
			 left:40%;
			 position:absolute;
			 width:350px;
			 height:30px;
			 align:center;
			font-size: 18px;
			 box-shadow: 0 0 5px 1px #969696;	
		 }
		 .button{
			 left:48%;
			 position:absolute;
			 top:90%;
			 background-color:#4f83df;
			 width:100px;
			 height:40px;
			 font-family:Josefin Slab;
			 border:0px;
			 font-size:15px;
			 color:white;
			 box-shadow:3px 3px #f2f2f2;	
			 }
         .button:hover{
			 right:2px;
			 background-color:white;
			 width:102px;
			 font-family:Josefin Slab;
			 border:0px;
			 font-size:17px;
			 color:#4f83df;
			 box-shadow:4px 4px #4f83df;	
         	      }
		</style>
	</head>
	<body>
	<form id="go" method ='post' action="def.php">
			<p>Choose the broker id </p>
			<select name = 'brokerselect'>
            <option> 1 </option>
            <option> 2 </option>
            <option> 3 </option>
            <option> 4 </option>
            <option> 5</option>
            </select>
            <p>Choose the trader id </p>
			<select name = 'traderselect'>
            <option> 1 </option>
            <option> 2 </option>
            <option> 3 </option>
            <option> 4 </option>
            <option> 5</option>
            <option> 6</option>
            <option> 7</option>
            </select>  
		    <p>Choose the stock id </p>
			<select name = 'stockselect'>
            <option> 1</option>
            <option> 2 </option>
            <option> 3 </option>
            <option> 4 </option>
            <option> 5</option>
            <option> 6</option>
            <option> 7</option>
              <option> 8</option>
                <option> 9</option>
                  <option> 10</option>
            </select>  
		    <p> Enter the volume of stock </p>
		    <input type="text" style="font-family:Chunk;" placeholder="Enter volume of stock required" name="volume" > </input>
		    <br/>
		    <p>Enter bid </p>
		    <input type="text" style="font-family:Chunk;" placeholder="Enter bid " name="bid" > </input>
		
		    <button type="submit"  class="button" value="submit" > Submit </button>
		</form>
		
	
		


	</body>
    



<html>
