
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
 $sql = "INSERT INTO employee_history (name,address,mobile)
 VALUES ('$name','$address','$mobile')";
 if (mysqli_query($conn, $sql)) {
  echo "New record has been added successfully !";
} else {
  echo "Error: " . $sql . ":-" . mysqli_error($conn);
}
mysqli_close($conn);
}

?>