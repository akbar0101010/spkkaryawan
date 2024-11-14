<?php
include_once('includes/header.inc.php');

include_once('includes/alternatif.inc.php');
$altObj = new Alternatif($db);
$alt = $altObj->readAll();

include_once('includes/kriteria.inc.php');
$kriObj = new Kriteria($db);
$kri = $kriObj->readAll();

if ($_POST) {
    include_once('includes/nilai-awal.inc.php');
    $nilObj = new NilaiAwal($db);
    $nilObj->id_alternatif = $_POST['id_alternatif1']; // Menggunakan id_alternatif1 untuk penyimpanan
    $nilai = (array_sum($_POST["kriteria"]) / $kriObj->countAll());
    $nilObj->nilai = $nilai;
    $nilObj->keterangan = $nilObj->getRange($nilai);
    $nilObj->periode = $_POST['periode'];

    if ($nilObj->insert()) {
        $id = $db->lastInsertId();
        include_once('includes/nilai-awal-detail.inc.php');
        $nilDObj = new NilaiAwalDetail($db);
        
        // Menyimpan detail nilai untuk setiap kriteria
        foreach ($_POST["kriteria"] as $k => $v) {
            $nilDObj->id_nilai = $id;
            $nilDObj->id_kriteria = $k;
            $nilDObj->nilai = $_POST["kriteria"][$k];

            if (!$nilDObj->insert()) {
                echo "<script type=\"text/javascript\">
                    window.onload=function(){
                        showStickyErrorToast();
                    };
                </script>";
            }
        }
        echo "<script type=\"text/javascript\">
            window.onload=function(){
                showStickySuccessToast();
            };
        </script>";
    } else {
        echo "<script type=\"text/javascript\">
            window.onload=function(){
                showStickyErrorToast();
            };
        </script>";
    }
}
?>
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <ol class="breadcrumb">
            <li><a href="index.php">Beranda</a></li>
            <li><a href="nilai-awal.php">Nilai Awal</a></li>
            <li class="active">Tambah Data</li>
        </ol>
        <p style="margin-bottom:10px;">
            <strong style="font-size:18pt;"><span class="fa fa-clone"></span> Tambah Nilai Preferensi</strong>
        </p>
        <div class="panel panel-default">
            <div class="panel-body">
                <form method="post">
                    <div class="form-group">
                        <label for="periode">Periode</label>
                        <select class="form-control" name="periode">
                            <option>---</option>
                            <?php 
                            $months = [
                                'Januari', 'Februari', 'Maret', 'April', 
                                'Mei', 'Juni', 'Juli', 'Agustus', 
                                'September', 'Oktober', 'November', 'Desember'
                            ];
                            
                            foreach ($months as $index => $month): ?>
                                <option value="<?= $index + 1 ?>"><?= $month ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <div class="form-group">
    <label for="id_alternatif1">PEGAWAI KE-1</label> 
    <select class="form-control" id="id_alternatif1" name="id_alternatif1">
        <option value="">---</option>
        <?php while ($row = $alt->fetch(PDO::FETCH_ASSOC)) : ?>
            <option value="<?=$row["id_alternatif"]?>"><?=$row["nama"]?></option>
        <?php endwhile; ?>
    </select>
</div>

<?php 
// Reset pointer ke awal untuk $alt
$alt->execute(); // Pastikan query untuk mendapatkan pegawai diulang
while ($row = $kri->fetch(PDO::FETCH_ASSOC)) : ?>
    <div class="form-group">
        <label for="<?=$row["nama_kriteria"]?>"><?=ucfirst($row["nama_kriteria"])?></label>
        <input type="text" name="kriteria[<?=$row["id_kriteria"]?>]" class="form-control">
    </div>
<?php endwhile; ?>

<div class="form-group">
    <label for="id_alternatif2">PEGAWAI KE-2</label> 
    <select class="form-control" id="id_alternatif2" name="id_alternatif2">
        <option value="">---</option>
        <?php 
        // Mengambil ulang data pegawai untuk pegawai ke-2
        $alt->execute(); // Pastikan query untuk mendapatkan pegawai diulang
        while ($row = $alt->fetch(PDO::FETCH_ASSOC)) : ?>
            <option value="<?=$row["id_alternatif"]?>"><?=$row["nama"]?></option>
        <?php endwhile; ?>
    </select>
</div>

<?php 
// Reset pointer ke awal untuk $kri jika diperlukan
$kri->execute(); // Pastikan query untuk mendapatkan kriteria diulang
while ($row = $kri->fetch(PDO::FETCH_ASSOC)) : ?>
    <div class="form-group">
        <label for="<?=$row["nama_kriteria"]?>"><?=ucfirst($row["nama_kriteria"])?></label>
        <input type="text" name="kriteria[<?=$row["id_kriteria"]?>]" class="form-control">
    </div>
<?php endwhile; ?>

<div class="form-group">
    <label for="id_alternatif2">PEGAWAI KE-3</label> 
    <select class="form-control" id="id_alternatif2" name="id_alternatif2">
        <option value="">---</option>
        <?php 
        // Mengambil ulang data pegawai untuk pegawai ke-2
        $alt->execute(); // Pastikan query untuk mendapatkan pegawai diulang
        while ($row = $alt->fetch(PDO::FETCH_ASSOC)) : ?>
            <option value="<?=$row["id_alternatif"]?>"><?=$row["nama"]?></option>
        <?php endwhile; ?>
    </select>
</div>

<?php 
// Reset pointer ke awal untuk $kri jika diperlukan
$kri->execute(); // Pastikan query untuk mendapatkan kriteria diulang
while ($row = $kri->fetch(PDO::FETCH_ASSOC)) : ?>
    <div class="form-group">
        <label for="<?=$row["nama_kriteria"]?>"><?=ucfirst($row["nama_kriteria"])?></label>
        <input type="text" name="kriteria[<?=$row["id_kriteria"]?>]" class="form-control">
    </div>
<?php endwhile; ?>

                            
                            <?php while ($row = $kri->fetch(PDO::FETCH_ASSOC)) : ?>
                            <div class="form-group">
                                <label for="<?=$row["nama_kriteria"]?>"><?=ucfirst($row["nama_kriteria"])?></label>
                                <input type="text" name="kriteria[<?=$row["id_kriteria"]?>]" class="form-control">
                            </div>
                            <?php endwhile; ?>
                            
                            <div class="btn-group">
                                    <button type="submit" class="btn btn-dark">Simpan</button>
                                    <button type="button" onclick="location.href='nilai-awal.php'" class="btn btn-default">Kembali</button>
                            </div>
						</form>
					</div>
			</div>
	  </div>
</div>
<?php include_once('includes/footer.inc.php');?>