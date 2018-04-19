<?php

include_once 'blade/view.credit_conversion.blade.php';
include_once './common/class.common.php';
include_once './common/class.common.payment.php';
?>



<div class="panel panel-default">
  
    <div class="panel-heading">Credit Conversion</div>
    
    <div class="panel-body">


		<label class="control-label col-sm-4" for="txtCat">

		<?php
		
		
		$Result = $_CreditConversionBAO->getCreditAmount();

		//if DAO access is successful to load all the Terms then show them one by one
		if($Result->getIsSuccess()){

			$credit = $Result->getResultObject();
		?> 
			<tr> 
				<th>Total Credit :</th>
				
			</tr>
			<tr>
				
			    <div><?php echo $credit->getCredit(); ?></div>	
				
				
				 
			 </tr>
		    <?php

			}


		?>
		</label>


		<label class="control-label col-sm-4" for="txtCat">

		<?php
		
		
		$Result = $_CreditConversionBAO->getTotalBalance();

		//if DAO access is successful to load all the Terms then show them one by one
		if($Result->getIsSuccess()){

			$credit = $Result->getResultObject();
		?> 
			<tr> 
				<th>Total Balance :</th>
				
			</tr>
			<tr>
				
			    <div><?php echo $credit->getBalance(); ?></div>	
				
				
				 
			 </tr>
		    <?php

			}


		?>
		</label>
	

	<div class="form-group">
		<form method="post" class="form-horizontal">
		<label class="control-label col-sm-offset-0" for="txtPayAmount"> Convert Credit: (10 Credit= 1 BDT)</label><br>
			<div class= "col-sm-3"><br>
				<input type="text" class="form-control col-sm-offset-0  col-sm-4" name="txtCreditAmount" placeholder="Enter Amount of Credit to Convert into BDT">
			</div>
			

			<div class="form-group">        
	              <div class="col-sm-offset-8 col-sm-2"><br>
						<button type="submit" name="convert" onclick="return confirm('sure to convert?'); ">Convert</button>
								
					</div>
				</div>
			
		</form>
	
	</div>

	
		
	


	</div>

	<div class="panel-body">

		<table class="table table-bordered">

		<?php
		
		
		$Result = $_CreditConversionBAO->getCreditConversionlogs();

		//if DAO access is successful to load all the Terms then show them one by one
		if($Result->getIsSuccess()){

			$paymentlogList = $Result->getResultObject();
		?> 
			<tr> 
				<th>Date Time</th>
				<th>Converted Credit</th>
				<th>BDT</th>
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
			    		<?php echo $paymentlog->getConvertedCredit(); ?>    	
			    </td>
				<td>
					<?php echo $paymentlog->getBDT(); ?>
				    	
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

