<?php
// write dao object for each class
include_once './common/class.common.php';
include_once './common/class.common.payment.php';
include_once './util/class.util.php';

Class PaymentDAO{

	private $_DB;
	private $_Cat;

	function PaymentDAO(){

		$this->_DB = DBUtil::getInstance();
		//$this->_Cat = new Payment();
		//$this->_Due = new Due();

	}

	// get all the Payments from the database using the database query

	

	

	
	//create Payment funtion with the Payment object
	public function createPayment($Payment){

		
		$Amount=$Payment->getAmount();
		$ID=$_SESSION["globalUser"]->getID ();

		$SQL="UPDATE tbl_user_details SET Balance = Balance-'$Amount' WHERE ID='$ID'";

		$SQL = $this->_DB->doQuery($SQL);		

		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	public function UpdateDue($Payment){

		
		$Amount=$Payment->getAmount();
		$ID=$_SESSION["globalUser"]->getID ();
		$cat_Id = $Payment->getCategoryID();

		$SQL="UPDATE tbl_due SET Due= Due-'$Amount' WHERE UserID='$ID' AND CategoryID = '$cat_Id'";

		$SQL = $this->_DB->doQuery($SQL);		

		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	public function getCategoryFromId($cat){

		

		$SQL="SELECT Category FROM tbl_item_category WHERE ID= '$cat'";

		$SQL = $this->_DB->doQuery($SQL);		
		
		$row = $this->_DB->getTopRow();
		

		$this->_ItemCategory = new ItemCategory();

		//$this->_ItemCategory->setID ( $row['ID']);
		$this->_ItemCategory->setCategory( $row['Category'] );
		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_ItemCategory);

		return $Result;
	}

	public function getAllPaymentCategorys(){

		$PaymentCategoryList = array();

		$this->_DB->doQuery("SELECT * FROM tbl_item_category order by Category ASC");

		$rows = $this->_DB->getAllRows();

		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_ItemCategory = new ItemCategory();

		    $this->_ItemCategory->setID ( $row['ID']);
		    $this->_ItemCategory->setCategory( $row['Category'] );

		    $PaymentCategoryList[]=$this->_ItemCategory;

		    }

		    
   
		

		
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($PaymentCategoryList);

		return $Result;
	}


	public function Paymentlog($Payment){

		$CategoryID=$Payment->getCategoryID();
		$UserID=$_SESSION["globalUser"]->getID ();
		$Amount=$Payment->getAmount();
		//$Amount="900";

		$SQL = "INSERT INTO tbl_paylog(CategoryID,UserID,DateTime,Amount) 
				VALUES('$CategoryID','$UserID',now(),'$Amount')";

		//$SQL="UPDATE tbl_user_details SET Balance = Balance+'$Amount' WHERE ID='$ID'";

		$SQL = $this->_DB->doQuery($SQL);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	public function getAllPaymentlogs(){

		$PaymentlogList = array();

		$this->_DB->doQuery("SELECT * FROM  tbl_paylog order by DateTime DESC");
		$rows = $this->_DB->getAllRows();


		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_PayLogs = new PayLogs();

		    $this->_PayLogs->setCategoryID ( $row['CategoryID']);
		    $this->_PayLogs->setAmount( $row['Amount'] );
		    $this->_PayLogs->setDateTime( $row['DateTime'] );

		    $PaymentlogList[]=$this->_PayLogs;
   
		}
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($PaymentlogList);

		return $Result;
	}

		// public function getDueAmount($selectOption){
		// 	$ID=$_SESSION["globalUser"]->getID ();
			


			

		// 	$SQL = "SELECT Due FROM tbl_due WHERE UserID='$ID' AND CategoryID in (SELECT ID FROM tbl_item_category WHERE Category='Library')";

			

		// 	$SQL = $this->_DB->doQuery($SQL);	

		// 	$row = $this->_DB->getTopRow();

		// 	$this->_Due = new Due();

		//     $this->_Due->setDue( $row['Due']);	
			
		//  	$Result = new Result();
		// 	$Result->setIsSuccess(1);
		// 	$Result->setResultObject($this->_Due);

		// 	return $Result;
		// }

	

	}


	


echo '<br> log:: exit the class.Paymentdao.php';

?>