<?php include 'koneksi.php'; 
$anggota = mysqli_query($konek , "SELECT * FROM anggota WHERE idanggota = '$_GET[id]'");
$ad = mysqli_fetch_assoc($anggota);
include 'headerAD.php';
?>
	<div class="container">
	<div class="page-header">
<h2> EDIT DATA ANGGOTA </h2>
	</div>
<form action="" method="post">
<table class=" table table bordered" align="center">
<input type="hidden" name="idanggota" value="<?= $ad['idanggota'] ?>" hidden>
	<tr >
		<td>No Anggota</td>
		<td>:</td>
		<td>
			<input type="text" name="noanggota" value="<?= $ad['noanggota'] ?>" readonly>
		</td>
	</tr>
	<tr>
		<td>Nama</td>
		<td>:</td>
		<td>
			<input class="form-control" type="text" name="nama" size="30" max="50" value="<?= $ad['nama'] ?>">
		</td>
	</tr>
	<tr>
	<td>Instansi</td>
		<td>:</td>
		<td>
			<input class="form-control"  type="text" name="instansi" size="30" maxlength="20" value="<?= $ad['instansi'] ?>">
		</td>
	</tr>
	<tr>
	<td>Alamat</td>
		<td>:</td>
		<td>
			<input class="form-control"  type="text" name="alamat" size="30" maxlength="20" value="<?= $ad['alamat'] ?>">
		</td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td>
			<button class="btn btn-success" type="submit" name="ubah">UPDATE</button>
		</td>
	</tr>
</table>
<form>
<?php 
if (isset($_POST['ubah']) ) {
	$idanggota 	= $_POST['idanggota'];
	$noanggota 	= $_POST['noanggota'];
	$nama 		= $_POST['nama'];
	$instansi 	= $_POST['instansi'];
	$alamat 	= $_POST['alamat'];

		$edit = mysqli_query($konek , "UPDATE anggota SET 
			idanggota	= '$idanggota',
			noanggota   = '$noanggota',
			nama		= '$nama',
			instansi	= '$instansi',
			alamat		= '$alamat' WHERE idanggota = '$idanggota'
			");
		if ($edit) {
			echo "
			<Script>
			alert('data admin berhasil disimpan');
			document.location.href = 'tampilAA.php';
			</script>
			";
		}else {
			echo "
			<Script>
			alert('data admin gagal disimpan');
			document.location.href = 'editAA.php';
			</script>
			";
		}
	}



 ?>

<?php include 'footer.php'; ?>