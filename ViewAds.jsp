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
								<h1 class="tm-site-title">AdSherlock</h1>
								<h6 class="tm-site-description">Click Fraud Detection</h6>	
							</div>
						</div>
						<nav class="col-md-6 col-12 tm-nav">
							<ul class="tm-nav-ul">
								<li class="tm-nav-li"><a href="OwnerHome.jsp" class="tm-nav-link ">Home</a></li>
								<li class="tm-nav-li"><a href="PostAdd.jsp" class="tm-nav-link ">PostAdd</a></li>
                                                                   <li class="tm-nav-li"><a href="ViewAds.jsp" class="tm-nav-link active">View Ads</a></li>
								<li class="tm-nav-li"><a href="Owner.jsp" class="tm-nav-link">Logout</a></li>
							</ul>
						</nav>	
					</div>
				</div>
			</div>
		</div>

		<main>
			<header class="row tm-welcome-section">
                            <%String id=(String)session.getAttribute("id");
                            String username=(String)session.getAttribute("username");
                            %>
				<h2 class="col-12 text-center tm-section-title">ALL POSTED ADS</h2>
                                 <center>
                                     <table border="1">
                                         <tr>
                                             <th>Post Name</th>  <th>Description</th>
                                               <th>Date</th>  <th>Post Image</th>
                                         </tr>
                                         <%
                                         try{
                                          ResultSet r=Queries.getExecuteQuery("select * from adds where owner_id='"+id+"'");
                                          while(r.next()){
                                              %>
                                              <tr>
                                                  <td><%=r.getString("name")%></td>
                                                   <td><%=r.getString("description")%></td>
                                                    <td><%=r.getString("date")%></td>
                                                     <td><image src="view.jsp?id=<%=r.getString("id")%>" width="100" height="100"/></td>
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