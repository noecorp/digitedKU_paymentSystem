<?php
$ID=$_GET["ID"];
$UID=$_GET['uid'];

$servername="localhost";
$username="root";
$password="";
$dbname="based";

$conn=new mysqli($servername,$username,$password,$dbname);

if($conn->connect_error){
	die("Connection Failed".$conn->connect_error);
}

$sql="SELECT tbl_due.Due FROM tbl_due WHERE tbl_due.CategoryID='".$ID."' AND tbl_due.UserID='".$UID."'";
$res=$conn->query($sql);
if($res->num_rows>0){
	$result=$res->fetch_array();
	echo $result['Due'];
}else{
	echo "No Due";
}

$conn->close();
?>