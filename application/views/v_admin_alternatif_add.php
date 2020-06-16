  <div class="content-wrapper ">
    <section class="content-header">
      <h1>
        Tambah
      </h1>
    </section>

    <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">
						<span>Silahkan melengkapi form berikut</span>
					</h3>
				</div>
				<div class="box-body">
				  <div class="row">
				  <?php echo form_open("admin/alternatif_aksi_tambah"); ?>
					<div class="col-md-6">
					  <div class="form-group">
						<label>Nama Kriteria</label>
						<select type="text" class="form-control select2" name="kriteria_id">
							<option>-- Pilih Kriteria --</option>
							<?php
							foreach($tbl_kriteria as $data){
								echo "<option value='".$data->kriteria_id."'>".$data->kriteria_nama."</option>";
							}
							?>
						</select>
					  </div>
					  <div class="form-group">
						<label>Nama Alternatif</label>
						<select type="text" class="form-control select2" name="siswa_id">
							<option>-- Pilih Siswa --</option>
							<?php
							foreach($tbl_siswa as $data_siswa){
								echo "<option value='".$data_siswa->siswa_id."'>".$data_siswa->siswa_nama."</option>";
							}
							?>
						</select>
					  </div>
					  <div class="form-group">
						<label>Nilai Alternatif</label>
						<input type="number" class="form-control" name="alternatif_nilai" placeholder="Nilai alternatif">
					  </div>
					  <div class="form-group">
						<input type="submit" name="submit" value="Submit" class="btn btn-success">
					  </div>
					</div>
					<?php echo form_close(); ?>
				  </div>
				</div>
			</div>
		</div>
      </div>
    </section>
  </div>