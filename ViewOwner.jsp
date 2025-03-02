<%-- 
    Document   : OwnerHome
    Created on : 23 Feb, 2021, 2:17:17 PM
    Author     : KishanVenky
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
                                                             
								<h1 class="tm-site-title">Welcome</h1>
								<h6 class="tm-site-description">Admin Home</h6>	
							</div>
						</div>
						<nav class="col-md-6 col-12 tm-nav">
							<ul class="tm-nav-ul">
								<li class="tm-nav-li"><a href="UserHome.jsp" class="tm-nav-link ">Home</a></li>
								<li class="tm-nav-li"><a href="Viewusers.jsp" class="tm-nav-link ">ViewUsers</a></li>
                                                           	<li class="tm-nav-li"><a href="ViewOwner.jsp" class="tm-nav-link active">ViewOwners</a></li>
                                                                <li class="tm-nav-li"><a href="ViewFrauds.jsp" class="tm-nav-link">ViewFrauds</a></li>
                                                                <li class="tm-nav-li"><a href="Admin.jsp" class="tm-nav-link">Logout</a></li>
							</ul>
						</nav>	
					</div>
				</div>
			</div>
		</div>

		<main>
			<header class="row tm-welcome-section">
                           
				
                                 <center>
                                     <h2>
                                        View All Owner
                                     </h2>
                                     
                                     <table border="1">
                                         <tr>
                                             <th>Name</th>  <th>Email</th>
                                               <th>Mobile</th>  <th>Address</th>
                                         </tr>
                                         <%
                                         try{
                                          ResultSet r=Queries.getExecuteQuery("select * from register where usertype='Owner'");
                                          while(r.next()){
                                              %>
                                              <tr>
                                                  <td><%=r.getString("name")%></td>
                                                   <td><%=r.getString("email")%></td>
                                                    <td><%=r.getString("mobile")%></td>
                                                    <td><%=r.getString("address")%></td>
                                              </tr>
                                              
                                              <%
                                          }
                                         }catch(Exception e){
                                         out.println(e);    
                                         }
                                         %>
                                         
                                         
                                    
                                         
                                         
                                     </table>
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