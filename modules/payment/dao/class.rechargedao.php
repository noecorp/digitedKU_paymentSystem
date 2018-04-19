<?php
// write dao object for each class
include_once './common/class.common.php';
include_once './common/class.common.payment.php';
include_once './util/class.util.php';

Class RechargeDAO{

	private $_DB;
	private $_Cat;
	public $Email;

	function RechargeDAO(){

		$this->_DB = DBUtil::getInstance();
		//$this->_Cat = new Recharge();

	}

	// get all the Recharges from the database using the database query

	
	//create Recharge funtion with the Recharge object
	public function createRecharge($Recharge){

		$ID=$Recharge->getID();
		//$Email=$Recharge->getID();
		//$Email=$Recharge->getEmail();
		$Amount=$Recharge->getBalance();
		$Creator=$_SESSION["globalUser"]->getID ();

		//$SQL = "INSERT INTO tbl_user_details(ID,Title,CategoryID,Description,Tag,CreationDate,CreatorID) 
				//VALUES('$ID','$Name','$Category','$Description','$Tag',now(),'$Creator')";

		$SQL="UPDATE tbl_user_details SET Balance = Balance+'$Amount' WHERE ID='$ID'";

		$SQL = $this->_DB->doQuery($SQL);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	public function Rechargelog($Recharge){

		$ID=$Recharge->getID();
		
		$Amount=$Recharge->getBalance();
		

		$SQL = "INSERT INTO tbl_recharge_log(Email,Amount,DateTime) 
				VALUES('$ID','$Amount',now())";

		//$SQL="UPDATE tbl_user_details SET Balance = Balance+'$Amount' WHERE ID='$ID'";

		$SQL = $this->_DB->doQuery($SQL);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;
	}

	public function getAllRechargelogs(){

		$RechargelogList = array();

		$this->_DB->doQuery("SELECT * FROM  tbl_recharge_log order by DateTime DESC");
		$rows = $this->_DB->getAllRows();


		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_UserDetails = new UserDetails();
		    $this->_UserDetails->setID ( $row['Email']);
		    $this->_UserDetails->setBalance( $row['Amount'] );
		    $this->_UserDetails->setDateTime( $row['DateTime'] );

		    $RechargelogList[]=$this->_UserDetails;
   
		}
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($RechargelogList);

		return $Result;
	}

	public function getUserDetails($UserDetails){

		//$UserDetails = array();
		$Email=$UserDetails;

	}


	public function getUserDetail($email){

		//$UserDetails = array();
		//$ID=$UserDetails;
	
		

		$this->_DB->doQuery("SELECT ID,FatherName,MotherName FROM  tbl_user_details WHERE ID='".$email."'");
		//$rows = $this->_DB->getAllRows();

		
		$row = $this->_DB->getTopRow();

		$this->_UserDetails = new UserDetails();

		    $this->_UserDetails->setID ( $row['ID']);
		    $this->_UserDetails->setFatherName( $row['FatherName'] );
		    $this->_UserDetails->setMotherName( $row['MotherName'] );
		//////////

		//for($i = 0; $i < sizeof($rows); $i++) {
			//$row = $rows[$i];
			

		    //$userDetails[]=$this->_UserDetails;
   
		//}

		//todo: LOG util with level of log


		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_UserDetails);

		return $Result;
	}

	}

	
echo '<br> log:: exit the class.Rechargedao.php';

?>