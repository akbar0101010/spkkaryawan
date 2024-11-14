<?php
include_once('includes/header.inc.php');
include_once('includes/alternatif.inc.php');
include_once('includes/kriteria.inc.php');
include_once('includes/ranking.inc.php');

$altObj = new Alternatif($db);
$kriObj = new Kriteria($db);
$ranObj = new Ranking($db);

// Assuming readKhusus retrieves monthly data
$stmt = $ranObj->readKhusus();
$count = $ranObj->countAll();
$stmtx1y = $ranObj->readBob();
$stmtx2y = $ranObj->readBob();

?>
<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<br/>

		<h3>Hasil Perankingan</h3>
		<hr>
		<br>
		<?php 
		// Loop through each year and each month
		for ($year = 2024; $year <= 2025; $year++): 
			for ($month = 1; $month <= 12; $month++): 
				$altObj->periode = $year . '-' . str_pad($month, 2, '0', STR_PAD_LEFT); // Format: YYYY-MM
		?>
				<h4>Bulan <?= date('F Y', strtotime($altObj->periode)) ?></h4>
				<table width="100%" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>nip</th>
							<th>Nama</th>
							<th>Hasil Akhir</th>
							<th class="success">Ranking</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$rank = 1; 
						$alt1c = $altObj->readByRank(); 
						while ($row = $alt1c->fetch(PDO::FETCH_ASSOC)): 
						?>
							<tr>
								<td><?=$row["nip"]?></td>
								<td><?=$row["nama"]?></td>
								<td><?=number_format($row["hasil_akhir"], 4, '.', ',')?></td>
								<td class="success"><?=$rank++?></td>
							</tr>
						<?php endwhile; ?>
					</tbody>
				</table>
				<br>
			<?php 
			endfor; 
		endfor; 
		?>
	</div>
</div>

<?php include_once('includes/footer.inc.php');?>