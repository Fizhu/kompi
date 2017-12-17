<?php
include("koneksi.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
<!--
Project      : Data users CRUD MySQLi (Create, read, Update, Delete) PHP, MySQLi dan Bootstrap
Author		 : Hakko Bio Richard, A.Md
Website		 : http://www.niqoweb.com
Blog         : http://www.acchoblues.blogspot.com
Email	 	 : hakkobiorichard[at]gmail.com
-->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>KOMPI</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	
	<style>
		.content {
			margin-top: 80px;
		}
	</style>
	
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand visible-xs-block visible-sm-block" href="index.php">Data users</a>
				<a class="navbar-brand hidden-xs hidden-sm" href="index.php">Data users</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.php">Master Data</a></li>
					<li><a href="add.php">Tambah Data</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
	<div class="container">
		<div class="content">
			<h2>Data users</h2>
			<hr />
			
			<?php
			if(isset($_GET['aksi']) == 'delete'){
				$id_user = $_GET['id_user'];
				$cek = mysqli_query($koneksi, "SELECT * FROM users WHERE id_user='$id_user'");
				if(mysqli_num_rows($cek) == 0){
					echo '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data tidak ditemukan.</div>';
				}else{
					$delete = mysqli_query($koneksi, "DELETE FROM users WHERE id_user='$id_user'");
					if($delete){
						echo '<div class="alert alert-primary alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data berhasil dihapus.</div>';
					}else{
						echo '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button> Data gagal dihapus.</div>';
					}
				}
			}
			?>
			
			<form class="form-inline" method="get">
				<div class="form-group">
					<select name="filter" class="form-control" onchange="form.submit()">
						<option value="0">Filter Data Mahasiswa</option>
						<?php $filter = (isset($_GET['filter']) ? strtolower($_GET['filter']) : NULL);  ?>
						<option value="Tetap" <?php if($filter == 'Tetap'){ echo 'selected'; } ?>>Tetap</option>
						<option value="Kontrak" <?php if($filter == 'Kontrak'){ echo 'selected'; } ?>>Kontrak</option>
                        <option value="Outsourcing" <?php if($filter == 'Outsourcing'){ echo 'selected'; } ?>>Outsourcing</option>
					</select>
				</div>
			</form>
			<br />
			<div class="table-responsive">
			<table class="table table-striped table-hover">
				<tr>
                    <th>No</th>
					<th>ID</th>
					<th>Nama</th>
                    <th>Tempat Lahir</th>
                    <th>Tanggal Lahir</th>
					<th>No Telepon</th>
					<th>Status</th>
                    <th>Tools</th>
				</tr>
				<?php
				if($filter){
					$sql = mysqli_query($koneksi, "SELECT * FROM users WHERE level_user='$filter' ORDER BY id_user ASC");
				}else{
					$sql = mysqli_query($koneksi, "SELECT * FROM users ORDER BY id_user ASC");
				}
				if(mysqli_num_rows($sql) == 0){
					echo '<tr><td colspan="8">Data Tidak Ada.</td></tr>';
				}else{
					$no = 1;
					while($row = mysqli_fetch_assoc($sql)){
						echo '
						<tr>
							<td>'.$no.'</td>
							<td>'.$row['id_user'].'</td>
							<td><a href="profile.php?id_user='.$row['id_user'].'"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> '.$row['nama'].'</a></td>
                            <td>'.$row['tempat_lahir'].'</td>
                            <td>'.$row['tanggal_lahir'].'</td>
							<td>'.$row['no_telepon'].'</td>
							<td>';
							if($row['level_user'] == 'admin'){
								echo '<span class="label label-success">Admin</span>';
							}
                            else if ($row['level_user'] == 'member' ){
								echo '<span class="label label-info">Member</span>';
							}
                            else if ($row['level_user'] == 'Outsourcing' ){
								echo '<span class="label label-warning">Outsourcing</span>';
							}
						echo '
							</td>
							<td>
								
								<a href="edit.php?id_user='.$row['id_user'].'" title="Edit Data" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
								<a href="password.php?id_user='.$row['id_user'].'" title="Ganti Password" data-placement="bottom" data-toggle="tooltip" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>
								<a href="index.php?aksi=delete&id_user='.$row['id_user'].'" title="Hapus Data" onclick="return confirm(\'Anda yakin akan menghapus data '.$row['nama'].'?\')" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
							</td>
						</tr>
						';
						$no++;
					}
				}
				?>
			</table>
			</div>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>