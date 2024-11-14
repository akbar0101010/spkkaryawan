<?php
include_once('includes/header.inc.php');

include_once('includes/alternatif.inc.php');
$altObj = new Alternatif($db);

if($_POST){
	$altObj->id = $_POST["id_alternatif"];
	$altObj->nip = $_POST["nip"];
	$altObj->nama = $_POST["nama"];
	$altObj->kelamin = $_POST["kelamin"];
	$altObj->jabatan = $_POST["jabatan"];
	if($altObj->insert()){ ?>
		<script type="text/javascript">
			window.onload=function(){
				showStickySuccessToast();
			};
		</script> <?php
	} else { ?>
		<script type="text/javascript">
			window.onload=function(){
				showStickyErrorToast();
			};
		</script> <?php
	}
}
?>
<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
	  <ol class="breadcrumb">
		  <li><a href="index.php">Beranda</a></li>
		  <li><a href="data-alternatif.php">Data Alternatif</a></li>
		  <li class="active">Tambah Data</li>
		</ol>
  	<p style="margin-bottom:10px;">
  		<strong style="font-size:18pt;"><span class="fa fa-clone"></span> Tambah Alternatif 1</strong>
  	</p>
  	<div class="panel panel-default">
			<div class="panel-body">
				    <form method="post">
						  <div class="form-group">
						    <label for="id_alternatif">ID Alternatif</label>
						    <input type="text" class="form-control" id="id_alternatif" name="id_alternatif" required readonly="on" value="<?php echo $altObj->getNewID(); ?>">
						  </div>
							<div class="form-group">
									<label for="nip">Nomor Induk Pegawai</label>
									<input type="text" name="nip" id="nip" class="form-control" autofocus="on" required="on">
							</div>
							<div class="form-group">
									<label for="nama">Nama Lengkap</label>
									<input type="text" name="nama" id="nama" class="form-control" required="on">
							</div>
							
							<div class="form-group">
									<label for="kelamin">Jenis Kelamin</label>
									<select class="form-control" name="kelamin" id="kelamin" required="on">
											<option value="">---</option>
											<option value="Pria">Pria</option>
											<option value="Wanita">Wanita</option>
									</select>
							</div>
						
							<div class="form-group">
									<label for="jabatan">Jabatan</label>
									<input type="text" name="jabatan" id="jabatan" class="form-control" required="on">
							</div>
			
							<div class="btn-group">
							  <button type="submit" class="btn btn-dark">Simpan</button>
							  <button type="button" onclick="location.href='data-alternatif.php'" class="btn btn-default">Kembali</button>
							</div>
					</form>
			  </div>
		</div>
	</div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
