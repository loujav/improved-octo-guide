<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>

<html>

<head>

	<title>GAMEZONE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/p1.css">
	
	<link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css">
	
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/hero-category.js"></script>
	
	<script>
		$(document).ready(function(){
			$("#cart-btn").click(function(){
				$("#id01").css("display","block");
			});
		});
	</script>
</head>
<%!int grandtotal;%>
<%

	
	try{
		if(session.getAttribute("user")==null || session.getAttribute("user")==""){
			response.sendRedirect("login.jsp");
		}
	}
	catch(Exception e){
		//e.printStackTrace
	}
	/*
	List<String> pname = new ArrayList<String>();
	List<String> pqty = new ArrayList<String>();
	List<String> pimg = new ArrayList<String>();
	
	session.setAttribute("pname",pname);
	session.setAttribute("pqty",pqty);
	session.setAttribute("pimg",pimg);
	*/
%>
<body>

	<nav>
		<div class="web-logo">
			<img src="images/gz_logo.png" height="140"/>
		</div>
		<div class="maximize-nav">
			<ul>
				<li><a href="home.jsp" id="nav-home">HOME</a></li>
				<li>|</li>
				<li><a href="store.jsp" id="nav-about">STORE</a></li>
				<li>|</li>
				<li><a href="forum.jsp" id="nav-forum">FORUM</a></li>
				<li>|</li>
				<li><a href="profile.jsp" id="nav-myaccount"><i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 24px;"></i></a></li>
			</ul>
		</div>
		<div class="minimize-nav">
			<button id="btn-toggle-nav"></button>
			<div class="dropdown-content">
				<ul>
					<li><a href="">Home</a></li>
					<li><a href="">Store</a></li>
					<li><a href="">Forum</a></li>
					<li><a href="">Register</a></li>
					<li><a href=""><i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 24px;"></i></a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	<div class="item-container">
	
		<div class="color-gold">
			USER PROFILE
			
			
		</div>
		
		
		

		
		<div class="product-list" id="dota-products">
		
		
		<!-- End -->
		
	</div>
	
	<div class="footer" style="margin-top:8px;">
		<div class="display-inline">
			<span class="yellow">HOME</span><br>
			News<br>
			Downloads<br>
			Donate<br>
			Rankings
			
		</div>
		<div class="display-inline">
			<span class="yellow">COMMUNITY</span><br>
			Forum<br><br><br><br>
		</div>
		<div class="display-inline">
			<span class="yellow">SUPPORT</span><br>
			Terms of Service<br>
			F.A.Q.<br>
			Contact Us<br><br>
		</div>
		<div class="display-inline">
			<span class="yellow">ACCOUNT</span><br>
			Register<br>
			My Account<br>
			Lost Password<br><br>
		</div>
		
		<div class="property">
			COPYRIGHT 2017 | JAVIER & AMARO, ALL RIGHTS RESERVED<br>
		</div>
	</div>
	
	<!-- MODAL para sa CART hahahahahahahahahahahaha -->
	
		
	<div id="id01" class="modal">
	  
	  <form class="modal-content animate">
		<div class="imgcontainer">
		<i id="cart-btn" class="fa fa-shopping-cart" aria-hidden="true" style="font-size:32px;"></i>
		  <span onclick="document.getElementById('id01').style.display='none'" style="margin-top:-24px;margin-right:-16px;" class="close" title="Close Modal">&times;</span>
		  
		</div>

		<div class="container">
			
			<table>
				<tr>
					<th>Image</th>
					<th>Description</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Sub-Total</th>
				</tr>
				<%
				try{
					
					List<String> newPName = (List<String>)session.getAttribute("pname");
					List<String> newPQty = (List<String>)session.getAttribute("pqty");
					List<String> newPImg = (List<String>)session.getAttribute("pimg");
					List<String> newPAmt = (List<String>)session.getAttribute("pamt");
					
					grandtotal=0;
					int subtot=0;
					
					for(int a=0;a<newPName.size();a++){
						
						subtot = Integer.parseInt(newPAmt.get(a)) * Integer.parseInt(newPQty.get(a));
						
						out.print("<tr><td><img src='"+newPImg.get(a)+"'</td>");
						out.print("<td>"+newPName.get(a)+"</td>");
						out.print("<td>"+newPQty.get(a)+"</td>");
						out.print("<td>"+newPAmt.get(a)+" GCoin</td>");
						out.print("<td>"+subtot+" GCoin</td>");
						out.print("</tr>");
						grandtotal+=subtot;
					}
				}
				catch(Exception e){
					
				}
				%>
			</table>
			
		</div>

	  </form>
	  
		<div class="container" style="background-color:#2e2e2e;width:37%;margin:auto;padding:20px;border:1px solid #999999;">
		  <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Close</button>
		  <span class="gitnain golde">Grand Total:<%=grandtotal%> GCoin<span>
		  <span class="psw"><a href=""><button>Check Out</button></a></span>
		</div>
	</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

	
</body>

</html>