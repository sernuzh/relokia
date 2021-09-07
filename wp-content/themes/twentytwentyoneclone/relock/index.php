<!doctype html>
<html lang="uk" >
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>relokia &#8211; Релокіа</title>
<link rel='stylesheet'   href='style.css' media='all' />
<link rel='stylesheet'   href='bootstrap.min.css' media='all' />
<link rel='stylesheet'   href='bootstrap-grid.min.css' media='all' />
<link rel='stylesheet'   href='webfonts/all.css' media='all' />
<script src='jquery.min.js' ></script>
<script src='jquery.custom.js' ></script>
<script src='bootstrap.min.js' ></script>

	</head>

<body>
<div class="container">
			 <div class="row topper">	
					<div class="col-sm-12 col-xs-12 col-md-12"></div>
			   </div> 		
<div class="row main ">
		<div class="col-sm-2 col-xs-2 col-md-2"></div>
        <div class="col-sm-8 col-xs-8 col-xs-8 grey-box ">
        <div class="row empty-top"><div class="col-sm-12 col-xs-12 col-md-12"></div> </div>
                	<div class="row nav-m">		
	        	<div class="col-sm-2  ">	<i class="fa fa-home"></i>
	        	</div>     
		        <div class="col-sm-3"  id="contactinfo"> Contact Info
		        	</div>  
		        <div class="col-sm-3" id="quantity"> Quantity
		        	</div>  
		        <div class="col-sm-2" id="price">	Price
		        	</div>  
		        <div class="col-sm-2" id="done">	Done
		        </div> 
		    </div>
			<div class="row dynamical">

				<div id="contactinfo_content" class="col-sm-10 col-xs-10 col-md-10">
				<h1>Contact Info</h1>
						<form >
				  <div class="form-group row">
				    <label for="name" class="col-sm-2 col-md-2 col-xs-2 col-form-label">Name</label>
				    <div class="col-sm-9 col-md-9 col-xs-9">
				      <input type="text" class="form-control" id="name" >
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="email" class="col-sm-2 col-md-2 col-xs-2 col-form-label">Email</label>
				    <div class="col-sm-9 col-md-9 col-xs-9">
				      <input type="email" class="form-control" id="email" >
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="phone" class="col-sm-2 col-md-2 col-xs-2 col-form-label">Phone</label>
				    <div class="col-sm-9 col-md-9 col-xs-9">
				      <input type="text" class="form-control" id="phone" >
				    </div>
				  </div>
				</form>				
							</div>

		<div id="quantity_content" class="col-sm-10 col-xs-10 col-md-10">
				<h1>Quantity</h1>
						<form>
				  <div class="form-group row">
				    <label for="name" class="col-sm-2 col-md-2 col-xs-2 col-form-label">quantity</label>
				    <div class="col-sm-9 col-md-9 col-xs-9">
				      <input type="number" max="1000"  class="form-control" id="quantity_val" >
				    </div>
				  </div>
				  								</form>			
					
							</div>

<div id="price-content" class="col-sm-10 col-xs-10 col-md-10">
				<h1>Price</h1>
				<div id="price-num"></div>				
							</div>

<div id="done_success_content" class="col-sm-10 col-xs-10 col-md-10">
				<h1>Done</h1>
				<div id="done-success">Your email was send successfuly</div>
				
					<div class="col-sm-2 col-xs-2 col-md-2"></div>
		<div class="col-sm-8 col-xs-8 col-xs-8 grey-box">			
		</div>
		<div class="col-sm-2 col-xs-2 col-md-2"></div>
							</div>
<div id="done_warn_content" class="col-sm-10 col-xs-10 col-md-10">
				<h1>Done</h1>
				<div id="done-warn">We cannot send you email right now. Use alternative way to connect us</div>
											</div>
					</div>
		</div>
		<div class="col-sm-2 col-xs-2 col-md-2"></div>

	<div class="col-sm-2 col-xs-2 col-md-2"></div>
	<div class="col-sm-8 col-xs-8 col-md-8 grey-box">

		<div class="row continue-to-done">
			<div class="col-sm-1 col-xs-1 col-md-1"></div>
			<div class="col-sm-11 col-xs-11 col-md-11 "><button type="button" class="btn btn-primary continue-to-done-btn">Send</button> <button type="button" class="btn btn-light back-to-quantity-btn">Back</button></div>
		 </div>	

		 <div class="row start-again">
			<div class="col-sm-1 col-xs-1 col-md-1"></div>
			<div class="col-sm-11 col-xs-11 col-md-11 "><button type="button" class="btn btn-primary start-again-btn">Start Again -></button> </div>
		 </div>	

		 <div class="row continue-to-price">
			<div class="col-sm-1 col-xs-1 col-md-1"></div>
			<div class="col-sm-11 col-xs-11 col-md-11 "><button type="button" class="btn btn-primary continue-to-price-btn">Continue</button> <button type="button" class="btn btn-light back-to-contactinfo-btn">Back</button></div>
		 </div>	

         <div class="row continue-to-quantity">
			<div class="col-sm-1 col-xs-1 col-md-1"></div>
			<div class="col-sm-11 col-xs-11 col-md-11 continue"><button type="button" class="btn btn-primary continue-to-quantity-btn">Continue</button></div>
		 </div>	
	</div>	
    <div class="col-sm-2 col-xs-2 col-md-2"></div>					
	</div>

	<div class="row botter">
		<div class="col-sm-2 col-xs-2 col-md-2"></div>
	<div class="col-sm-10 col-xs-10 col-md-10">
		<h3>Title</h3>
		This is the description
	</div>
	</div>
		
</div>		
</body>
</html>
