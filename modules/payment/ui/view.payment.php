<?php

include_once 'blade/view.payment.blade.php';
include_once './common/class.common.php';
?>



<div class="panel panel-default">
  
    <div class="panel-heading">Payment</div>
    
    <div class="panel-body">

		<div id="form">
			<form method="post" class="form-horizontal">
			<input type="hidden" name="uid" id="uid" value="<?php echo $_SESSION['globalUser']->getID(); ?>">
				<div class="form-group">
				<label class="control-label col-sm-4" for="txtCat">Category : </label>			
				<div class="col-sm-6">	
						    <?php
						    // this block of code prints the list box of roles with current assigned  roles
						    $User=$_SESSION["globalUser"]->getID ();
						    $var = '<select name="selectedCategory" class="form-control"   id="selectedCategory" class="paymentcat" onchange="post(this.value);">';
							$Result = $_PaymentBAO->getAllPaymentCategorys();
								//if DAO access is successful to load all the Categorys then show them one by one
							if($Result->getIsSuccess()){

								$Categorys = $Result->getResultObject();

								$var = $var.'<option selected disabled>Select Category</option>';
							
						       for ($i=0; $i < sizeof($Categorys); $i++) { 
						       		
						       		$ItemCategory = $Categorys[$i];
						    
						    		$var = $var. '<option value="'.$ItemCategory->getID().'"';   			
						    		if(isset($_GET['edit']) && !strcmp($_GET['edit'],$ItemCategory->getCategory())) {
						          		$var = $var.' selected="selected"';
						          	} 			

						          	$var = $var.'>'.$ItemCategory->getCategory().'</option>';
								}

								$var = $var.'</select>';
							}
							echo $var;
							?>	
				</div>
			</div>
			<div class="form-group">
					<label class="control-label col-sm-4" for="txtDueAmount">Due Amount : </label>
					<div class="col-sm-6" >	
						<span class="form-control"  id="txtDueAmount"></span>
					</div>
			</div>
			<script>

			$(document).ready(function(){
				uidFunction();
			});

			function uidFunction(){
				var id=$('#uid').val();
				return id;
			}

				function post(Category)
				{
					var userID=uidFunction();
					var xhttp;
					// if(Category=""){
					// 	$('#txtDueAmount').text("No Due Amount");
					// }

					xhttp=new XMLHttpRequest();
					xhttp.onreadystatechange=function(){
						if(this.readyState==4&&this.status==200){
							$('#txtDueAmount').text(this.responseText);
						}
					};

					xhttp.open("GET","./modules/payment/ui/payment_response.php?ID="+Category+"&uid="+userID,true);
					xhttp.send();
				}
				
			</script>



				<div class="form-group">
					<label class="control-label col-sm-4" for="txtPayAmount">Amount to Pay:</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="txtPayAmount"  name="txtPayAmount" placeholder="Enter Amount"  />
					</div>
				</div>	
				<!-- <?php
					$due = new due();
				  ?>
 -->
				
				

				
		        <div class="form-group">        
	              <div class="col-sm-offset-2 col-sm-10">
						<button type="submit" name="pay" onclick="return confirm('sure to pay?'); ">Pay</button>
								
					</div>
				</div>	
			</form>
			
		</div>

<div class="panel-body">

		<table class="table table-bordered">

		<?php
		
		
		$Result = $_PaymentBAO->getAllpaymentlogs();

		//if DAO access is successful to load all the Terms then show them one by one
		if($Result->getIsSuccess()){

			$paymentlogList = $Result->getResultObject();
		?> 
			<tr> 
				<th>Date Time</th>
				<th>Category</th>
				<th>Amount</th>
			</tr>
			<?php
			for($i = 0; $i < sizeof($paymentlogList); $i++) {
				$paymentlog = $paymentlogList[$i];
				?>
			    <tr>
			    <td>
					<?php echo $paymentlog->getDateTime(); ?>
				    	
				 </td>
			    <td>
			    	<?php $cat = $paymentlog->getCategoryID(); 

			    	$Result2 = $_PaymentBAO->getCategoryFromId($cat);
			    	if($Result2->getIsSuccess())
			    	{

						$paymen = $Result2->getResultObject();
			 
				    	echo $paymen->getCategory();
			    	}


			    	?>		    	
			    </td>
				<td>
					<?php echo $paymentlog->getAmount(); ?>
				    	
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

	