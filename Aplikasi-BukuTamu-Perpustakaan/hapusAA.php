<?php 
session_start();
if (isset($_SESSION['login']) ){
	include 'koneksi.php';
	$hapus = mysqli_query($konek , "DELETE FROM anggota WHERE idanggota = '$_GET[id]'");
	if (!$hapus) {
		echo "
		<script>
		alert('data gagal dihapus');
		document.location.href = 'tampilAA.php';
		</script>
		";
	}else {
		echo "
		<script>
		alert('data berhasil dihapus');
		document.location.href = 'tampilAA.php';
		</script>
		";
	}
}else {
	echo "
	<script>
	alert('anda tidak memiliki akses dihalaman ini');
	document.location.href = 'loginAD.php';
	</script>
	";
}

 ?>