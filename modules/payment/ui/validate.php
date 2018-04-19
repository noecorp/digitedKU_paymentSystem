<?php


$servername="localhost";
$username="root";
$password="";
$name=$_POST['postname'];
$conn=mysql_connect($servername,$username,$password);

if (!$conn) {
	echo "failed";	
}

mysql_select_db('based');
$SQL = "SELECT Due FROM tbl_due WHERE UserID='test@test.com' AND CategoryID in (SELECT ID FROM tbl_item_category WHERE Category='$name')";


$result=mysql_query($SQL,$conn);

while ($row=mysql_fetch_array($result,MYSQL_ASSOC)) {
	echo $row['Due'];
}



mysql_close($conn);

?>