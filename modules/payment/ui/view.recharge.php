<?php

include_once 'blade/view.recharge.blade.php';
include_once './common/class.common.php';
?>


<head>
	<meta charset="utf-8">
	<title>Recharge</title>
	<link rel="stylesheet" href="../resources/css/style.css"></head>

					
<style type="text/css">
	.popup{
		width: 400px;
		height: 180px;
		margin: 0 auto;
		position: relative;
		display: none;
	}

	/* Popup container - can be anything you want */
	.popup {
	    position: relative;
	    display: inline-block;
	    cursor: pointer;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	}

	/* The actual popup */
	.popup .popuptext {

	    visibility: hidden;
	    
		width: 800px;
	    
	    background-color: #555;
	    color: #fff;
	    text-align: center;
	    border-radius: 6px;
	    padding: 8px 0;
	    position: absolute;
	    z-index: 1;
	    bottom: 125%;
	    left: 50%;
	    margin-left: -80px;
	}

	/* Popup arrow */
	.popup .popuptext::after {
	    content: "";
	    position: absolute;
	    top: 100%;
	    left: 50%;
	    margin-left: -5px;
	    border-width: 5px;
	    border-style: solid;
	    border-color: #555 transparent transparent transparent;
	}

	/* Toggle this class - hide and show the popup */
	.popup .show {
	    visibility: visible;
	    -webkit-animation: fadeIn 1s;
	    animation: fadeIn 1s;
	}

	/* Add animation (fade in the popup) */
	@-webkit-keyframes fadeIn {
	    from {opacity: 0;} 
	    to {opacity: 1;}
	}

	@keyframes fadeIn {
	    from {opacity: 0;}
	    to {opacity:1 ;}
	}
</style>

<form action="" method="post" name="myform">
<div class="panel panel-default">
    
    <div class="panel-heading">Recharge</div>
    
    <div class="panel-body">

	<div id="form">
		<form method="post" class="form-horizontal">

			<div class="form-group">
				<label class="control-label col-sm-4" for="txtEmail">Email:</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="nm"  name="txtEmail"  placeholder="Enter Email"  />
				</div>
			</div>	

			
	
			
			<div class="form-group">
				<label class="control-label col-sm-4" for="txtAmount">Amount : </label>
				<div class="col-sm-6">	
					<input type="text" class="form-control"  name="txtAmount" placeholder="Enter Amount" />
				</div>
			</div>

			
	        <div class="form-group">        
              <div class="col-sm-offset-2 col-sm-10">
              

<div>


<div type="submit" id="popup" class="popup" onclick=" post(); myFunction()">Check
  <div class="popuptext" id="myPopup">H<br>
	
	</div>
	<div>
		<button type="submit" name="confirm" >Confirm</button>
	</div>
	
	</div>

	
  
  </div> 
</div>
</form>
</head>
<script>
// When the user clicks on div, open the popup
function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}

		function uidFunction(){
				var id=$('#nm').val();
				return id;
			}
	function post()
				{
					var userID=uidFunction();
					var xhttp;
					// if(Category=""){
					// 	$('#txtDueAmount').text("No Due Amount");
					// }

					xhttp=new XMLHttpRequest();
					xhttp.onreadystatechange=function(){
						if(this.readyState==4&&this.status==200){
							$('#myPopup').text(this.responseText);
						}
					};

					xhttp.open("GET","./modules/payment/ui/recharge_popup_response.php?&nm="+userID,true);
					xhttp.send();
// function post()
// 		{
// 			var email= $('#nm').val();
// 			var amount=$('#txtAmount').val();

// 			$.post('recharge_popup.php',{postemail:email,postamount:amount},
// 				function fun(data2)
// 				{
// 					$('#myPopup').html(data2);				 
// 				}

				
// 			);
		}
</script>
<!-- <style type="text/css">

</style>
							<button class="btn" type="submit" name="Recharge">Recharge</button>
							<div class="popup">
							<p>Do you want to recharge for -</p>
							<div class="options">
								<a href="">Confirm</a>
								<a href="">Cancel</a>
							</div>
							</div>
							<script type="text/javascript" src="../js/jquery.js"></script>
							<script>
								$(document).ready(function(){
									$(".btn").on('click',function(){
										$(".popup").fadeIn('slow');
									});
								});
							</script> -->
						
							
				</div>
			</div>	
		</form>
		
	</div>

	<div class="panel-body">

	<table class="table table-bordered">

	<?php
	
	
	$Result = $_RechargeBAO->getAllRechargelogs();

	//if DAO access is successful to load all the Terms then show them one by one
	if($Result->getIsSuccess()){

		$RechargelogList = $Result->getResultObject();
	?> 
		<tr> 
			<th>Date Time</th>
			<th>Account</th>
			<th>Recharge Amount</th>
		</tr>
		<?php
		for($i = 0; $i < sizeof($RechargelogList); $i++) {
			$Rechargelog = $RechargelogList[$i];
			?>
		    <tr>
		    <td>
				<?php echo $Rechargelog->getDateTime(); ?>
			    	
			 </td>
		    <td>
		    	<?php echo $Rechargelog->getID(); ?>		    	
		    </td>
			<td>
				<?php echo $Rechargelog->getBalance(); ?>
			    	
			 </td>
			 
			 
		    </tr>
	    <?php

		}

	}
	else{

		echo $Result->getResultObject(); //giving failure message
	}

	?>


	</table>
	</div>
	</div>
	</div>
</div>

	