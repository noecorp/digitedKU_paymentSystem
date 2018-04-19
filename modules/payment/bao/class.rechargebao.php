<?php

include_once './util/class.util.php';
include_once '/../dao/class.rechargedao.php';


/*
	Recharge Business Object 
*/
Class RechargeBAO{

	private $_DB;
	private $_RechargeDAO;

	function RechargeBAO(){

		$this->_RechargeDAO = new RechargeDAO();

	}

		
	//create Recharge funtion with the Recharge object
	public function createRecharge($Recharge){

		$Result = new Result();	
		$Result = $this->_RechargeDAO->createRecharge($Recharge);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in RechargeDAO.createRecharge()");		

		return $Result;

	
	}
	public function Rechargelog($Recharge){

		$Result = new Result();	
		$Result = $this->_RechargeDAO->Rechargelog($Recharge);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in RechargeDAO.Rechargelog()");		

		return $Result;

	
	}

	public function getAllRechargelogs(){

		$Result = new Result();	
		$Result = $this->_RechargeDAO->getAllRechargelogs();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in RechargeDAO.getAllRechargelogs()");		

		return $Result;

	
	}

	public function getUserDetails($UserDetails){

		$Result = new Result();	
		$Result = $this->_RechargeDAO->getUserDetails($UserDetails);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in RechargeDAO.getUserDetails()");		

		return $Result;

	
	}

	public function getUserDetail($email){

		$Result = new Result();	
		$Result = $this->_RechargeDAO->getUserDetail($email);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in RechargeDAO.getUserDetail()");		

		return $Result;

	
	}
	
}

echo '<br> log:: exit the class.Rechargebao.php';

?>