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
				  <?php echo form_open("admin/siswa_aksi_tambah"); ?>
					<div class="col-md-6">
					  <div class="form-group">
						<label>Nama Siswa</label>
						<input type="text" class="form-control" name="siswa_nama" placeholder="Nama Siswa">
					  </div>
					  <div class="form-group">
						<label>Kelas</label>
						<input type="text" class="form-control" name="siswa_kelas" placeholder="I, II, III, IV, V, VI">
					  </div>
					  <div class="form-group">
						<label>Tanggal Lahir</label>
						<input type="date" min="1990-01-01" class="form-control" name="siswa_tanggallahir">
					  </div>
					</div>
					<div class="col-md-6">
					  <div class="form-group">
						<label>Agama</label>
						<input type="text" class="form-control" name="siswa_agama">
					  </div>
					  <div class="form-group">
						<label>Jenis Kelasmin</label>
						<select class="form-control select2" name="siswa_jeniskelamin" >
							<option>Pilih Jenis Kelamin</option>
							<option value="Laki-Laki">Laki-Laki</option>
							<option value="Perempuan">Perempuan</option>
						</select>
					  </div>
					  <div class="form-group">
						<label>Alamat</label>
						<textarea class="form-control" name="siswa_alamat" placeholder="Alamat Siswa"></textarea>
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