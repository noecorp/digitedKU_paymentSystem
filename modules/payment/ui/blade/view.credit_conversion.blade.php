<?php

include_once './util/class.util.php';
include_once '/../../bao/class.credit_conversionbao.php';

$_CreditConversionBAO= new CreditConversionBAO();
$_DB = DBUtil::getInstance();
$_Log= LogUtil::getInstance();


if(isset($_POST['convert']))
{
	 $CreditConversion = new UserDetails();
	 $CreditConversion->setID(Util::getGUID());
     $CreditConversion->setCredit($_DB->secureInput($_POST['txtCreditAmount']));


	 $_CreditConversionBAO->createCreditConversion($CreditConversion);
	 $_CreditConversionBAO->createCreditConversionLog($CreditConversion);
	 	 
}









//echo '<br> log:: exit blade.Payment.php';

?>