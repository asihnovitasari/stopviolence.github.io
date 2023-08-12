<?php
$host = 'localhost';
$username ='root';
$password = '';
$database = 'survey';

$conn = mysqli_connect($host, $username, $password, $database);
if (!$conn) {
  die("Koneksi ke database gagal: " . mysqli_connect_error());
}

$nama = $_POST['nama'];
$umur = $_POST['umur'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$hubungan_pelaku = $_POST['hubungan_pelaku'];
$cerita = $_POST['cerita'];

$sql = "INSERT INTO korban_kekerasan (nama, umur, jenis_kelamin, hubungan_pelaku, cerita) VALUES ('$nama', '$umur', '$jenis_kelamin', '$hubungan_pelaku', '$cerita')";
if (mysqli_query($conn, $sql)) {
  echo "Data berhasil disimpan";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>