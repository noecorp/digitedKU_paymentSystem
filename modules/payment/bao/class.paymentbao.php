<?php

include_once './util/class.util.php';
include_once '/../dao/class.paymentdao.php';


/*
	Payment Business Object 
*/
Class PaymentBAO{

	private $_DB;
	private $_PaymentDAO;

	function PaymentBAO(){

		$this->_PaymentDAO = new PaymentDAO();

	}

		
	//create Payment funtion with the Payment object
	public function createPayment($Payment){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->createPayment($Payment);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.createPayment()");		

		return $Result;

	
	}

	public function UpdateDue($Payment){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->UpdateDue($Payment);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.UpdateDue()");		

		return $Result;

	
	}
	public function getCategoryFromId($Cat){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getCategoryFromId($Cat);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getCategoryFromId()");		

		return $Result;

	
	}

	public function getAllPaymentCategorys(){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getAllPaymentCategorys();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getAllPaymentCategorys()");		

		return $Result;
	}
	
	public function Paymentlog($Payment){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->Paymentlog($Payment);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.Paymentlog()");		

		return $Result;

	
	}

	public function getAllPaymentlogs(){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getAllPaymentlogs();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getAllPaymentlogs()");		

		return $Result;

	
	}

	public function getDueAmount($selectOption){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getDueAmount($selectOption);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getDueAmount()");		

		return $Result;

	
	}

	
}

echo '<br> log:: exit the class.Paymentbao.php';

?>