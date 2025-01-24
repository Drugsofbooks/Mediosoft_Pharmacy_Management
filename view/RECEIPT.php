<?php
require_once('../model/medicinesModel.php');

session_start();
if(isset($_GET['medicine_id'])){
    $medicine_id = $_GET['medicine_id'];
}
if(isset($_GET['quantity'])){
    $quantity = $_GET['quantity'];
}

$medicines = get_all_medicines_data_by_id($medicine_id);
$username = $_SESSION["user_login"];
?>

  <h1>Receipt</h1>
  <div id="receipt-container">
    <p><strong>User Name:</strong> <?php echo $username;?></p>
    <p><strong>Medicine Name:</strong> <?php echo $medicines[0]['medicine_title'];?></p>
    <p><strong>Meddicine Price:</strong> <?php echo $medicines[0]['medicine_price'] ?></p>
    <p><strong>Quantity:</strong> <?php echo $quantity?></p>
    <p><strong>Total Price:</strong> <?php echo ($quantity * $medicines[0]['medicine_price'])?></p>
  </div>
