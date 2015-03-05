<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Login &amp; Signup forms in panel - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<section class="hero2 " >
		<header style="background: none repeat scroll 0% 0% rgb(44, 62, 80);">
			<div class="wrapper">
				<nav>
					<ul>
						<li><a href="dashBoard">Dashboard</a></li>
							<li><a href="pricing.jsp">Pricing Plans</a></li>
							<li><a href="googlemapcombine.jsp">Stores Near You</a></li>
							<li><a href="Hiring.jsp">We are Hiring!</a></li>
							<li><a href="feedback.jsp">FeedBack</a></li>
					</ul>
					<a href="Login.jsp" class="login_btn">Login</a>
				</nav>
			</div>
		</header>
		</section>
		
		<section class="search" style="height: 60px;">
		<div class="wrapper" style='color: rgb(255, 255, 255); font-family: "lato-regular",Helvetica,Arial,sans-serif; font-size: 20px; text-transform: uppercase; letter-spacing: 1px; line-height: 22px; text-align: center;'>
			
			<p style="position: relative; top: 20px;">Feedback</p>
			
			
		</div>
		</section>
		
  <div class="container">    
        
        <div id="signupbox" style=" margin-top:50px;" class="mainbox col-md-9  col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Feedback</div>
                          
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" action="feedback"" class="form-horizontal" role="form" method="post">
                        
                                    
                                
                              
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="firstname" placeholder="First Name">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="email" placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="school" class="col-md-3 control-label">School</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="school" placeholder="SIS,SOL,SOE">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="start" class="col-md-3 control-label">What functions can we implement?</label>
                                    <div class="col-md-9">
                                        
                                        <textarea class="form-control" name="start" placeholder="You should.."></textarea>
                                    </div>
                                </div>
                                
                                 <div class="form-group">
                                    <label for="stop" class="col-md-3 control-label">What functions can we improve on and how?</label>
                                    <div class="col-md-9">
                                        
                                        <textarea class="form-control" name="improve" placeholder="You should.."></textarea>
                                    </div>
                                </div>
                                
                                 <div class="form-group">
                                    <label for="like" class="col-md-3 control-label">What functions do you like?</label>
                                    <div class="col-md-9">
                                        
                                        <textarea class="form-control" name="like" placeholder="I like.."></textarea>
                                    </div>
                                </div>
                                
                                 <div class="form-group">
                                    <label for="start" class="col-md-3 control-label">Any other Recommendations?</label>
                                    <div class="col-md-9">
                                        
                                        <textarea class="form-control" name="recommend" placeholder="Recommedations"></textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Submit</button>
                                        
                                    </div>
                                </div>
                                
                             
                                
                                
                                
                            </form>
                         </div>
                    </div>

               
               
                
         </div> 
    </div>
    
        
   
    
<script type="text/javascript">

</script>
</body>
</html>