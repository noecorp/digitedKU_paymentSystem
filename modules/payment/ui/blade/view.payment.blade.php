<?php

include_once './util/class.util.php';
include_once '/../../bao/class.paymentbao.php';

$_PaymentBAO = new PaymentBAO();
$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();


if(isset($_POST['pay']))
{
	 $Payment = new PayLogs();

	 
     $Payment->setAmount($_DB->secureInput($_POST['txtPayAmount']));

     if(isset($_POST['selectedCategory'])){ 

		$Payment->setCategoryID($_POST['selectedCategory']);
	}

   	 $_PaymentBAO->UpdateDue($Payment);//for updating due
	 $_PaymentBAO->createPayment($Payment);//for updating balance
	 $_PaymentBAO->Paymentlog($Payment);//creating log 
}









//echo '<br> log:: exit blade.Payment.php';

?>