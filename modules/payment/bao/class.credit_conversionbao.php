<?php

include_once './util/class.util.php';
include_once '/../dao/class.credit_conversiondao.php';


/*
	Payment Business Object 
*/
Class CreditConversionBAO{

	private $_DB;
	private $_CreditConversionDAO;

	function CreditConversionBAO(){

		$this->_CreditConversionDAO = new CreditCoversionDAO();

	}

		
	

	public function getCreditAmount(){

		$Result = new Result();	
		$Result = $this->_CreditConversionDAO->getCreditAmount();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CreditCoversionDAO.getCreditAmount()");		

		return $Result;

	
	}

	public function getTotalBalance(){

		$Result = new Result();	
		$Result = $this->_CreditConversionDAO->getTotalBalance();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CreditCoversionDAO.getTotalBalance()");		

		return $Result;

	
	}
	public function createCreditConversion($credit){
		$Result = new Result();	
		$Result = $this->_CreditConversionDAO->createCreditConversion($credit);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CreditCoversionDAO.createCreditConversion()");		

		return $Result;

	}

	public function createCreditConversionLog($credit){
		$Result = new Result();	
		$Result = $this->_CreditConversionDAO->createCreditConversionLog($credit);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CreditCoversionDAO.createCreditConversionLog()");		

		return $Result;

	}

	public function getCreditConversionlogs(){

		$Result = new Result();	
		$Result = $this->_CreditConversionDAO->getCreditConversionlogs();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in CreditConversionDAO.getCreditConversionlogs()");		

		return $Result;

	
	}

	
}

echo '<br> log:: exit the class.creditconversionbao.php';

?>