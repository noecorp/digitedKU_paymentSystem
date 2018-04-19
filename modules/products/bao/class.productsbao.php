<?php

include_once './util/class.util.php';
include_once '/../dao/class.productsdao.php';


/*
	Payment Business Object 
*/
Class ProductsBAO{

	private $_DB;
	private $_Create_ProductDAO;

	function ProductsBAO(){

		$this->_ProductsDAO = new ProductsDAO();

	}


	public function searchProductByCat(){

		$Result = new Result();	
		$Result = $this->_ProductsDAO->searchProductByCat();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in productsDAO.searchProductByCat()");		

		return $Result;

	
	}

	public function getCategoryFromId($Cat){

		$Result = new Result();	
		$Result = $this->_ProductsDAO->getCategoryFromId($Cat);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in ProductsDAO.getCategoryFromId()");		

		return $Result;

	
	}
	
	public function addToCart($cart){

		$Result = new Result();	
		$Result = $this->_ProductsDAO->addToCart($cart);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in create_productDAO.createProduct()");		

		return $Result;

	
	}
	


	

	
}

echo '<br> log:: exit the class.Productsbao.php';

?>