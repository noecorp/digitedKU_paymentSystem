<?php
include_once './common/class.common.php';
include_once './common/class.common.user.php';
include_once './common/class.common.payment.php';
include_once './util/class.util.php';

Class CreditCoversionDAO{

	private $_DB;
	private $_Cat;

	function CreditCoversionDAO(){

		$this->_DB = DBUtil::getInstance();
		//$this->_Cat = new Payment();
		//$this->_Due = new Due();

	}

	// get all the Payments from the database using the database query

	public function getCreditAmount(){
		$ID=$_SESSION["globalUser"]->getID ();
		
		$SQL = "SELECT 	Credit FROM tbl_user_details WHERE ID='$ID' ";

		

		$SQL = $this->_DB->doQuery($SQL);	

		$row = $this->_DB->getTopRow();

		$this->_userDetails = new UserDetails();

	    $this->_userDetails->setCredit( $row['Credit']);	
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_userDetails);

		return $Result;
	}

	public function getTotalBalance(){
		$ID=$_SESSION["globalUser"]->getID ();
		
		$SQL = "SELECT 	Balance FROM tbl_user_details WHERE ID='$ID' ";

		

		$SQL = $this->_DB->doQuery($SQL);	

		$row = $this->_DB->getTopRow();

		$this->_userDetails = new UserDetails();

	    $this->_userDetails->setBalance( $row['Balance']);	
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_userDetails);

		return $Result;
	}


	public function createCreditConversion($Credit){

		
		$creditamout=$Credit->getCredit();

		$ID=$_SESSION["globalUser"]->getID ();
		
		$SQL="UPDATE tbl_user_details SET Credit = Credit-'$creditamout'  , Balance = (Balance + ('$creditamout'/10)) WHERE ID='$ID'";

		$SQL = $this->_DB->doQuery($SQL);		

		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	public function createCreditConversionLog($Credit){

		
		$creditamout=$Credit->getCredit();
		$ID =$Credit->getID();
		$UserID=$_SESSION["globalUser"]->getID ();
		$BDT=$creditamout/10;
		
		$SQL="INSERT INTO tbl_credit_conversion_log(ID,DateTime,ConvertedCredit,BDT,UserID) VALUES ('$ID',now(),'$creditamout','$BDT','$UserID')";

		$SQL = $this->_DB->doQuery($SQL);		

		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	public function getCreditConversionlogs(){

		$CCLogsList = array();
		$UserID=$_SESSION["globalUser"]->getID ();

		$this->_DB->doQuery("SELECT * FROM  tbl_credit_conversion_log WHERE UserID='$UserID' order by DateTime DESC");
		$rows = $this->_DB->getAllRows();


		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_CCLogs = new CreditConversionLog();

			//$this->_PayLogs = new PayLogs();

		    $this->_CCLogs->setID ( $row['ID']);
		    $this->_CCLogs->setDateTime( $row['DateTime'] );
		    $this->_CCLogs->setConvertedCredit( $row['ConvertedCredit'] );
		    $this->_CCLogs->setBdt( $row['BDT'] );

		    $CCLogsList[]=$this->_CCLogs;
   
		}
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($CCLogsList);

		return $Result;
	}

	

}


	


echo '<br> log:: exit the class.CreditCoversionDDAO.php';

?>