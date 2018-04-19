<?php
$ID=$_GET["nm"];

$servername="localhost";
$username="root";
$password="";
$dbname="based";

$conn=new mysqli($servername,$username,$password,$dbname);

if($conn->connect_error){
	die("Connection Failed".$conn->connect_error);
}

$sql="SELECT tbl_user_details.ID, tbl_user_details.FatherName,tbl_user_details.MotherName FROM tbl_user_details WHERE tbl_user_details.ID='".$ID."'";
$res=$conn->query($sql);
if($res->num_rows>0)
{
	$result=$res->fetch_array();
	echo "Email ID: ";
	echo $result['ID'];
	echo ",   <> ";
	echo "Father's Name: ";
	echo $result['FatherName'];
	echo ",  <> ";
	echo "Mother's Name: ";
	echo $result['MotherName'];
}
else
{
	echo "Please Enter a Email";
}

$conn->close();
?>