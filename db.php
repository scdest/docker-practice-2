<?php
session_start();

$conn = mysqli_connect(
  '192.168.10.55',
  'crud_user',
  'cruduserpassword',
  'crud_db'
) or die(mysqli_erro($mysqli));

?>