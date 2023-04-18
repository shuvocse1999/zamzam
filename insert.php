
<?php

$servername='localhost';
$username='root';
$password='';
$dbname = "zamzamresturant";
$conn=mysqli_connect($servername,$username,$password,"$dbname");
if(!$conn){
	die('Could not Connect MySql Server:' .mysql_error());
}

if(isset($_POST['submit']))
{    
	$name = $_POST['name'];
	$address = $_POST['address'];
	$mobile = $_POST['mobile'];
	$employee_id = rand(1111,9999);
	$sql = "INSERT INTO employee_history (first_name,present_address,phone,employee_id,pos_id)
	VALUES ('$name','$address','$mobile','$employee_id','6')";
	if (mysqli_query($conn, $sql)) {
		header("Location: http://localhost/zamzamresturant/ordermanage/order/pos_invoice");
		exit();
	} else {
		echo "Error: " . $sql . ":-" . mysqli_error($conn);
	}
	mysqli_close($conn);
}

?>