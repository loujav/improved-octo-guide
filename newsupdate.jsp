<%@ page import="java.sql.*"%>
<!DOCTYPE html>
	<meta charset="UTF-8">
<html>
<head>
	<title> GameZone | Dashboard </title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/materialize/css/materialize.css">
	<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/dash.css">
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"> 
		function confirmdelete()
		{ 
		 return confirm("Are you sure you want to delete?");  
		} 
	</script>
	
	<script type="text/javascript"> 
		function confirmdelete()
		{ 
		 return confirm("Are you sure you want to delete?");  
		} 
	</script> 

	<script>
		function startTime()
		{
		var today=new Date();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		// add a zero in front of numbers<10
		m=checkTime(m);
		s=checkTime(s);
		document.getElementById('txt').innerHTML=h+":"+m+":"+s;
		t=setTimeout(function(){startTime()},500);
		}

		function checkTime(i)
		{
		if (i<10)
		  {
		  i="0" + i;
		  }
		return i;
		}
	</script>

	<script type="text/javascript" language="javascript">
		function validateTextBox(){
		var form=document.getElementById("viewSup");
		var desc=form["desc"].value;
		var unt=form["unit"].value;
		var qty=form["qty"].value;
		var cost=form["cost"].value;
		var date=form["date"].value;
		var desc_err=document.getElementById("desc_err");
		var unit_err=document.getElementById("unit_err");
		var qty_err=document.getElementById("qty_err");
		var cost_err=document.getElementById("cost_err");
		var date_err=document.getElementById("date_err");
		if(desc==""){
		desc_err.innerHTML="Desciption is empty!";
		}else{
		desc_err.innerHTML="";
		}
		if(unt==""){
		unit_err.innerHTML="Unit is empty!";
		}else{
		unit_err.innerHTML="";
		}

		if(qty==""){
		qty_err.innerHTML="Quantity is empty!";
		}else{
		qty_err.innerHTML="";
		}
		if(cost==""){
		cost_err.innerHTML="Cost is empty!";
		}else{
		cost_err.innerHTML="";
		}
		if(date==""){
		date_err.innerHTML="Date is empty!";
		}else{
		date_err.innerHTML="";
		}

		if(desc=="" || unt=="" || qty=="" || cost=="" || date==""){
		alert("Please fill all required fields!");
		return false
		}else{
		return true;
		}
		}
		</script>
		<script>
		function startTime()
		{
		var today=new Date();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		// add a zero in front of numbers<10
		m=checkTime(m);
		s=checkTime(s);
		document.getElementById('txt').innerHTML=h+":"+m+":"+s;
		t=setTimeout(function(){startTime()},500);
		}

		function checkTime(i)
		{
		if (i<10)
		  {
		  i="0" + i;
		  }
		return i;
		}
	</script>
</head>
<body onload="startTime()">
	<div class="dash">
	<img src="images/gz_logo.png" />
	<SCRIPT LANGUAGE="Javascript">
<!-- 

// Array of day names
var dayNames = new Array("Sunday","Monday","Tuesday","Wednesday",
				"Thursday","Friday","Saturday");

// Array of month Names
var monthNames = new Array(
"January","February","March","April","May","June","July",
"August","September","October","November","December");

var now = new Date();
document.write(dayNames[now.getDay()] + ", " + 
monthNames[now.getMonth()] + " " + 
now.getDate() + ", " + now.getFullYear());


</SCRIPT>
    
		<div id="txt" class="time"></div>
	</div>
	<div class="board">
	</div>
	</div>
	</ul>
</div>
<div class="contento palakihin2">
		<h3> <center> WELCOME <span id="admn1">ADMIN! </center></span> </h3> 
			<div class="dashdash">
				<div class="logout"><a href="logout.php"><i class="fa fa-sign-out"></i> &nbsp; Log out</a></div> 
			</div>
		<div class="navto">
				<div class="views4">
				
<div class="views25">
					
					
	<div class="print">
	   <div class="preview">
		<form action="update-news.jsp" method="post">
			<p>Update Dota2 News</p>
			<input type="hidden" name="topic" value="dota"/>
			<input type="text" name="news-title" placeholder="Enter title here" required/>
			<textarea name="comment-new" required>Update news here...</textarea>
			<button class="btn1"> 
				Update
			</button>
		</form>
		<!--div class="previewCon">
		 3. <a href="reorderPoint.php">Within Reorder Point</a>
		</div> -->
	   </div>
  
	</div>
</div>

<div class="views25">

	   <div class="preview">
		<form action="update-news.jsp" method="post">
			<p>Update League of Legends News</p>
			<input type="hidden" name="topic" value="lol"/>
			<input type="text" name="news-title" placeholder="Enter title here" required/>
			<textarea name="comment-new" required>Update news here...</textarea>
			<button class="btn1"> 
				Update
			</button>
		</form>
		<!--div class="previewCon">
		 3. <a href="reorderPoint.php">Within Reorder Point</a>
		</div> -->
	   </div>
</div>

<div class="views25">

	   <div class="preview">
		<form action="update-news.jsp" method="post">
			<p>Update Lord or MU News</p>
			<input type="hidden" name="topic" value="mu"/>
			<input type="text" name="news-title" placeholder="Enter title here" required/>
			<textarea name="comment-new">Update news here...</textarea>
			<button class="btn1"> 
				Update
			</button>
		</form>
		<!--div class="previewCon">
		 3. <a href="reorderPoint.php">Within Reorder Point</a>
		</div> -->
	   </div>
</div>

				<ul class="navv2">
					<li><a  class="active" href="dashboard1.jsp" id="h"><i class="fa fa-dashboard fa-2x"></i>&nbsp; Dashboard</a></li>
					<li><a href="newsupdate.jsp"><i class="fa fa-pie-chart fa-2x"></i>&nbsp; News Update</a></li>
					<li><a href="#shirt"><i class="fa fa-female fa-2x"></i>&nbsp; Feedback</a></li>
					<li><a href="cms.php"><i class="fa fa-edit fa-2x"></i>&nbsp; Comment</a></li>
				</ul>
		</div>
	</div>
</div>
	<div class="footer" style="margin-top:8px;">
		<div class="display-inline">
			<span class="golde">HOME</span><br>
			News<br>
			Downloads<br>
			Donate<br>
			Rankings
			
		</div>
		<div class="display-inline">
			<span class="golde">COMMUNITY</span><br>
			Forum<br><br><br><br>
		</div>
		<div class="display-inline">
			<span class="golde">SUPPORT</span><br>
			Terms of Service<br>
			F.A.Q.<br>
			Contact Us<br><br>
		</div>
		<div class="display-inline">
			<span class="golde">ACCOUNT</span><br>
			Register<br>
			My Account<br>
			Lost Password<br><br>
		</div>
		
		<div class="property">
			COPYRIGHT 2017 | JAVIER & AMARO, ALL RIGHTS RESERVED<br>
		</div>
	</div>
</div>
</body>
</html>
 