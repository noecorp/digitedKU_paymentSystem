<?php

include_once './util/class.util.php';
include_once '/../../bao/class.rechargebao.php';

$_RechargeBAO = new RechargeBAO();
$_DB = DBUtil::getInstance();

/* saving a new Recharge account*/
if(isset($_POST['confirm']))
{
	 $Recharge = new UserDetails();

	 $Recharge->setID($_DB->secureInput($_POST['txtEmail']));

     $Recharge->setBalance($_DB->secureInput($_POST['txtAmount']));

   
	 $_RechargeBAO->createRecharge($Recharge);
	 $_RechargeBAO->Rechargelog($Recharge);	 
	// $_RechargeBAO->userDetails($Recharge);
}

if(isset($_POST['Recharge']))
{
	 $Recharge = new UserDetails();

	 $Recharge->setID($_DB->secureInput($_POST['txtEmail']));
   

	 $_RechargeBAO->getUserDetails($Recharge);


}

//echo '<br> log:: exit blade.Recharge.php';

?>