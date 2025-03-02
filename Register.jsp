<%-- 
    Document   : Admin
    Created on : 23 Feb, 2021, 11:44:09 AM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Efficient_and_Deployable_Click_Fraud_Detection_for_Mobile_Applications</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400" rel="stylesheet" />    
	<link href="css/templatemo-style.css" rel="stylesheet" />
</head>
<!--

Simple House

https://templatemo.com/tm-539-simple-house

-->
<body> 

	<div class="container">
	<!-- Top box -->
		<!-- Logo & Site Name -->
		<div class="placeholder">
			<div class="parallax-window" data-parallax="scroll" data-image-src="img/simple-house-01.jpg">
				<div class="tm-header">
					<div class="row tm-header-inner">
						<div class="col-md-6 col-12">
							<img src="img/simple-house-logo.png" alt="Logo" class="tm-site-logo" /> 
							<div class="tm-site-text-box">
								<h1 class="tm-site-title">AdSherlock</h1>
								<h6 class="tm-site-description">Click Fraud Detection</h6>	
							</div>
						</div>
						<nav class="col-md-6 col-12 tm-nav">
							<ul class="tm-nav-ul">
								<li class="tm-nav-li"><a href="index.html" class="tm-nav-link ">Home</a></li>
								<li class="tm-nav-li"><a href="Admin.jsp" class="tm-nav-link">Admin</a></li>
                                                                   <li class="tm-nav-li"><a href="Owner.jsp" class="tm-nav-link active">Owner</a></li>
								<li class="tm-nav-li"><a href="User.jsp" class="tm-nav-link">User</a></li>
							</ul>
						</nav>	
					</div>
				</div>
			</div>
		</div>

		<main>
			<header class="row tm-welcome-section">
				<h2 class="col-12 text-center tm-section-title">Registration Here</h2>
                                 <center>
                                <form action="RegisterAction.jsp" method="post">
                                    <table>
                                        <tr>
                                            <th>Name</th><td><input type="text" name="name" required=""></td>
                                        </tr>
                                         <tr>
                                            <th>Email</th><td><input type="email" name="email" required=""></td>
                                        </tr>
                                         <tr>
                                            <th>Mobile</th><td><input type="number" name="mobile" required=""></td>
                                        </tr>
                                         <tr>
                                            <th>Address</th><td><input type="text" name="address" required=""></td>
                                        </tr>
                                         <tr>
                                            <th>UserName</th><td><input type="text" name="username" required=""></td>
                                        </tr>
                                         <tr>
                                            <th>Password</th><td><input type="password" name="password" required=""></td>
                                        </tr>
                                         <tr><th>User Type</th><td><font color="black"><select name="utype">
                                  <option value="User">User</option>
                                  <option value="Owner">Owner</option>
                              </select>
                          </td></tr>
                                         <tr>
                                            <th></th><td><input type="submit" value="Register">
                                                <input type="reset" value="Reset"></td>
                                        </tr>
                                    </table>
                                </form>
                                    
                                 </center>
			</header>
			
			
			
			<!-- Gallery -->
			<div class="row tm-gallery">
				
				<!-- gallery page 2 -->
				<div id="tm-gallery-page-salad" class="tm-gallery-page hidden">
					
					
					
					
					
					
				</div> 
				
			</div>
			
		</main>

		
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script>
		$(document).ready(function(){
			// Handle click on paging links
			$('.tm-paging-link').click(function(e){
				e.preventDefault();
				
				var page = $(this).text().toLowerCase();
				$('.tm-gallery-page').addClass('hidden');
				$('#tm-gallery-page-' + page).removeClass('hidden');
				$('.tm-paging-link').removeClass('active');
				$(this).addClass("active");
			});
		});
	</script>
</body>
</html>