<?php

class ItemCategory{

    private $_ID;
    private $_Category;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setCategory( $Category ) {
        $this->_Category = $Category;
    }

    public function getCategory() {
        return $this->_Category;
    }

}


class Due{

    private $_ID;
    private $_CategoryID;
    private $_UserID;
    private $_Due;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setCategoryID( $CategoryID ) {
        $this->_CategoryID = $CategoryID;
    }

    public function getCategoryID() {
        return $this->_CategoryID;
    }

    public function setUserID ( $UserID ) {
        $this->_UserID = $UserID;
    }

    public function getUserID () {
        return $this->_UserID;
    }

    public function setDue ( $Due ) {
        $this->_Due = $Due;
    }

    public function getDue () {
        return $this->_Due;
    }

}

class PayLogs{

    private $_ID;
    private $_CategoryID;
    private $_UserID;
    private $_DateTime;
    private $_Amount;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }


    public function setCategoryID( $CategoryID ) {
        $this->_CategoryID = $CategoryID;
    }

    public function getCategoryID() {
        return $this->_CategoryID;
    }

    public function setUserID ( $UserID ) {
        $this->_UserID = $UserID;
    }

    public function getUserID () {
        return $this->_UserID;
    }

    public function setDateTime ( $DateTime ) {
        $this->_DateTime = $DateTime;
    }

    public function getDateTime () {
        return $this->_DateTime;
    }

    public function setAmount ( $Amount ) {
        $this->_Amount = $Amount;
    }

    public function getAmount () {
        return $this->_Amount;
    }

}

class CreditConversionLog{

    private $_ID;
    private $_DateTime;
    private $_ConvertedCredit;
    private $_BDT;
    private $_UserID;

    public function setID ( $ID ) {
        $this->_ID = $ID;
    }

    public function getID () {
        return $this->_ID;
    }

    public function setDateTime ( $DateTime ) {
        $this->_DateTime = $DateTime;
    }

    public function getDateTime () {
        return $this->_DateTime;
    }

    public function setConvertedCredit ( $ConvertedCredit ) {
        $this->_ConvertedCredit = $ConvertedCredit;
    }

    public function getConvertedCredit () {
        return $this->_ConvertedCredit;
    }

    public function setBdt( $BDT ) {
        $this->_BDT = $BDT;
    }

    public function getBdt () {
        return $this->_BDT;
    }

    public function setUserID( $UserID ) {
        $this->_UserID = $UserID;
    }

    public function getUserID () {
        return $this->_UserID;
    }

}


?>