<?php
// write dao object for each class
include_once './common/class.common.php';
include_once './common/class.common.product.php';
include_once './util/class.util.php';



Class CheckoutDAO{

	private $_DB;
	private $_Cat;

	function CheckoutDAO(){

		$this->_DB = DBUtil::getInstance();
		//$this->_Cat = new Payment();
		//$this->_Due = new Due();

	}

	public function getCartItems(){

		$CartList = array();
		$ID=$_SESSION["globalUser"]->getID ();

		$this->_DB->doQuery("select tbl_cart.ID, tbl_products.Name, tbl_products.Price,tbl_products.OfferedCredit,tbl_products.PictureAddress from tbl_cart,tbl_products where tbl_cart.ProductID=tbl_products.ID and tbl_cart.UserID='$ID'");
		$rows = $this->_DB->getAllRows();


		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_Cart = new Products();
			


			$this->_Cart->setID ( $row['ID']);
		    $this->_Cart->setName ( $row['Name']);
		    $this->_Cart->setPrice( $row['Price'] );
		    $this->_Cart->setOfferedCredit( $row['OfferedCredit'] );
		    $this->_Cart->setPicture( $row['PictureAddress'] );

		    $CartList[]=$this->_Cart;
   
		}
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($CartList);

		return $Result;
	}

	public function deleteFromCart($Item){


		$SQL = "DELETE from tbl_cart where ID ='".$Item->getID()."'";
	
		$SQL = $this->_DB->doQuery($SQL);

	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;

	}

	public function getPayCredit(){

			$ID=$_SESSION["globalUser"]->getID ();

			$SQL = "select sum(tbl_products.Price) as TotalToPay, sum(tbl_products.OfferedCredit) as TotalCredit from tbl_cart,tbl_products where tbl_cart.ProductID=tbl_products.ID and tbl_cart.UserID='$ID'";

			

			$SQL = $this->_DB->doQuery($SQL);	

			$row = $this->_DB->getTopRow();

			$this->_Total = new TotalPayCredit();

		    $this->_Total->setTotalToPay( $row['TotalToPay']);
		    $this->_Total->setTotalCredit( $row['TotalCredit']);		
			
		 	$Result = new Result();
			$Result->setIsSuccess(1);
			$Result->setResultObject($this->_Total);

			return $Result;
		}

	public function updateBalanceCredit($TotalToPay){

		$ID=$_SESSION["globalUser"]->getID ();
		$Amount=$TotalToPay->getTotalToPay();
		$Credit=$TotalToPay->getTotalCredit();
		$SQL = "UPDATE tbl_user_details SET Balance = Balance-'$Amount' , Credit=Credit+'$Credit' where ID ='".$ID."'";
	
		$SQL = $this->_DB->doQuery($SQL);

	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;

	}

	public function deleteAllFromCart(){

		$ID=$_SESSION["globalUser"]->getID ();
		$SQL = "DELETE from tbl_cart where UserID ='".$ID."'";
	
		$SQL = $this->_DB->doQuery($SQL);

	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;

	}

}

	echo '<br> log:: exit the class.Checkoutdao.php';
?>