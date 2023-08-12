<?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'survey';

$conn = mysqli_connect($host, $username, $password, $database);
if (!$conn) {
  die("Koneksi ke database gagal: " . mysqli_connect_error());
}

$sql = "SELECT * FROM korban_kekerasan";
$result = mysqli_query($conn, $sql);
?>

<table id="result-table">
  <thead>
    <tr>
      <th>Nama</th>
      <th>Umur</th>
      <th>Jenis Kelamin</th>
      <th>Status Hubungan dengan Pelaku</th>
      <th>Cerita</th>
    </tr>
  </thead>
  <tbody>
    <?php
    if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row['nama'] . "</td>";
        echo "<td>" . $row['umur'] . "</td>";
        echo "<td>" . $row['jenis_kelamin'] . "</td>";
        echo "<td>" . $row['hubungan_pelaku'] . "</td>";
        echo "<td>" . $row['cerita'] . "</td>";
        echo "</tr>";
      }
    } else {
      echo "<tr><td colspan='5'>Tidak ada data</td></tr>";
    }
    ?>
  </tbody>
</table>

<?php
mysqli_close($conn);
?>