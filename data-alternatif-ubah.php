<?php
include_once('includes/header.inc.php');

$id = isset($_GET['id']) ? $_GET['id'] : die('ERROR: missing ID.');

include_once('includes/alternatif.inc.php');

$altObj = new Alternatif($db);
$altObj->id = $id;
$altObj->readOne();

if ($_POST) {
  	$altObj->nip = $_POST["nip"];
  	$altObj->nama = $_POST["nama"];
  	$altObj->kelamin = $_POST["kelamin"];
  	$altObj->jabatan = $_POST["jabatan"];
    if ($altObj->update()) {
        echo "<script>location.href='data-alternatif.php'</script>";
    } else { ?>
      <script type="text/javascript">
        window.onload = function () {
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
      <li class="active">Ubah Data</li>
    </ol>
    <p style="margin-bottom:10px;">
      <strong style="font-size:18pt;"><span class="fa fa-pencil"></span> Ubah Alternatif</strong>
    </p>
      <div class="panel panel-default">
        <div class="panel-body">
          <form method="POST">
            <div class="form-group">
                <label for="id">ID Alternatif</label>
                <input type="text" name="id" id="id" class="form-control" autofocus="on" readonly="on" value="<?php echo $altObj->id; ?>">
            </div>
            <div class="form-group">
                <label for="nip">Nomor Induk Pegawai</label>
                <input type="text" name="nip" id="nip" class="form-control" autofocus="on" required="on" value="<?php echo $altObj->nip; ?>">
            </div>
            <div class="form-group">
                <label for="nama">Nama Lengkap</label>
                <input type="text" name="nama" id="nama" class="form-control" required="on" value="<?php echo $altObj->nama; ?>">
            </div>
            <div class="form-group">
                <label for="kelamin">Jenis Kelamin</label>
                <select class="form-control" name="kelamin" id="kelamin" required="on">
                    <option value="">---</option>
                    <option value="pria"<?=($altObj->kelamin == "pria")? "selected=\"on\"" : "" ?>>Pria</option>
                    <option value="wanita"<?=($altObj->kelamin == "wanita")? "selected=\"on\"" : "" ?>>Wanita</option>
                </select>
            </div>
            <div class="form-group">
                <label for="jabatan">Jabatan</label>
                <input type="text" name="jabatan" id="jabatan" class="form-control" required="on" value="<?php echo $altObj->jabatan; ?>">
            </div>
            <div class="btn-group">
              <button type="submit" class="btn btn-dark">Ubah</button>
              <button type="button" onclick="location.href = 'data-alternatif.php'" class="btn btn-default">Kembali</button>
            </div>
          </form>
        </div>
      </div>
  </div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
