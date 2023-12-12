<?php 
include 'koneksi.php';
$data = mysqli_query($konek ,"SELECT * FROM anggota");

include 'headerAD.php';
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>DATA ANGGOTA</title>
	<style >
		/*table{
			width: 200px;
		}*/
	</style>
</head>
<body>
	<div class="container">
	<div class="page-header">
<h2> DATA ANGGOTA</h2>
	</div>
<table style="margin-top: 10px;" class="table table-bordered table-striped">
 		<tr>
		<th style="text-align: center;">No</th>
        <th>Foto</th>
        <th>No Anggota</th>
		<th>Nama</th>
		<th>Instansi</th>
        <th>Alamat</th>
		<th>Aksi</th>
	</tr>
	<?php 
	$i=1;
	while($dta = mysqli_fetch_assoc($data) ) :
	 ?>
	<tr>
		<td width="30px" style="text-align: center;"><?= $i; ?></td>
        <td width="100px" align="center">
            <img src="img/<?= $dta['foto'] ?>" width="70" height="50">
        </td>
        <td width="100px"><?= $dta['noanggota'] ?></td>
		<td width="100px"><?= $dta['nama'] ?></td>
		<td width="100px"><?= $dta['instansi'] ?></td>
        <td width="100px"><?= $dta['alamat'] ?></td>
		<td width="100px">
			<a class="btn btn-warning btn-sm" href="editAA.php?id=<?= $dta['idanggota'] ?>">UPDATE</a> 
			<a class="btn btn-danger btn-sm" href="hapusAA.php?id=<?= $dta['idanggota'] ?>" onclick= "return confirm('apakah anda yakin ingin menghapus data?')">DELETE</a>
		</td>
	</tr>
	<?php $i++; ?>
<?php endwhile; ?>
</table>
</div>
</body>
</html>
<?php include 'footer.php'; ?>