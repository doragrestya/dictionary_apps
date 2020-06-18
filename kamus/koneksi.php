<?php
$connect = new mysqli('localhost','root','','db_kamus');
if($connect){
} else {
	echo "Database Gagal";
}
?>