<?php
include_once 'includes/header.inc.php';

include_once 'includes/nilai.inc.php';
$pro3 = new Nilai($db);
$stmt3 = $pro3->readAll();

include_once 'includes/alternatif.inc.php';
$pro1 = new Alternatif($db);
$stmt1 = $pro1->readAll();
$stmt4 = $pro1->readByFilter();

include_once 'includes/kriteria.inc.php';
$pro2 = new Kriteria($db);
$stmt2 = $pro2->readAll();

include_once 'includes/bobot.inc.php';
$pro5 = new Bobot($db);
$stmt5 = $pro5->readAll();
?>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="jumbotron">
			    <h1>Selamat datang Di!</h1>
			    <p>Penilaiaan pegawai terbaik BPS Pringsewu</p>
			</div>
			<div id="container2" style="min-width: 100%; height: 400px; margin: 0 auto"></div>
			<br/>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Nilai Preferensi</h3>
						</div>
						<div class="panel-body">
							<ol>
								<?php while ($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)) : ?>
									<li><?php echo $row3['ket_nilai'] ?> (<?php echo $row3['jum_nilai'] ?>)</li>
								<?php endwhile; ?>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Kriteria & Bobot</h3>
						</div>
						<div class="panel-body">
							<ol>
							<?php while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)) : ?>
								<li><?php echo $row2['nama_kriteria'] ?></li>
							<?php endwhile; ?>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Skor Alternatif & Hasil</h3>
						</div>
						<div class="panel-body">
							<ol>
							<?php while ($row1 = $stmt1->fetch(PDO::FETCH_ASSOC)) :?>
								<li><?php echo $row1['nama'] ?></li>
							<?php endwhile; ?>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<hr>
	<footer class="text-center">Copyright &copy; 2024 - BPS PRINGSEWU</footer>

	</div>

	