<?php
	include 'connect.php';
	echo 'masuk';
	$barcode = $_GET['barcode'];
	$nip = $_GET['nip'];
	$jam_masuk = $_GET['jam-masuk'];
	$noplat = $_GET['noplat'];
	$lokasi = $_GET['parkir'];
	$tgl = date("Y-m-d");

	$queryselect = "SELECT * FROM kendaraan WHERE noplat='$noplat'";
	while($c = $mysqli->query($queryselect)->fetch_array(MYSQLI_ASSOC)){
		$kelas = $c['kelas'];
		break;
	}
	$queryinsert = "INSERT INTO transaksi (`barcode`,`tanggal`,`kelas`) VALUES ('$barcode', '$tgl', '$kelas')";
	$queryinsert2 = "INSERT INTO transaksi_dosen (`barcode`,`nip`,`jam_masuk`) VALUES ('$barcode', '$nip', '$jam_masuk')";

	$res = $mysqli->query($queryinsert);
	echo 'lolos 1';
	$res = $mysqli->query($queryinsert2);
	echo 'lolos 2';

	$q = "SELECT * FROM area WHERE nama = '$lokasi'";
	$r = $mysqli->query($q);
	while($x = $r->fetch_array(MYSQLI_ASSOC)){
		$area = $x["id"]; break;
	}

	
	header('Location:alokasi-parkir.php?area='.$area);
?>