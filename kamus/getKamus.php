<?php
include 'koneksi.php';
$data = $connect->query("Select * from tb_kamus");
$result = array();

while($tampil = $data->fetch_assoc()){
	$result[] = $tampil;
}
echo json_encode($result);
?>