  <div class="content-wrapper ">
    <section class="content-header">
      <h1>
        Ubah
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
				  <?php echo form_open("admin/siswa_aksi_ubah/".$tbl_siswa->siswa_id); ?>
					<div class="col-md-6">
					  <div class="form-group">
						<label>Nama Siswa</label>
						<input type="text" class="form-control" name="siswa_nama" value="<?php echo set_value('siswa_nama', $tbl_siswa->siswa_nama); ?>">
					  </div>
					  <div class="form-group">
						<label>Kelas</label>
						<input type="text" class="form-control" name="siswa_kelas" value="<?php echo set_value('siswa_kelas', $tbl_siswa->siswa_kelas); ?>">
					  </div>
					  <div class="form-group">
						<label>Tanggal Lahir</label>
						<input type="date" min="1990-01-01" class="form-control" name="siswa_tanggallahir" value="<?php echo set_value('siswa_tanggallahir', $tbl_siswa->siswa_tanggallahir); ?>">
					  </div>
					</div>
					<div class="col-md-6">
					  <div class="form-group">
						<label>Agama</label>
						<input type="text" class="form-control" name="siswa_agama" value="<?php echo set_value('siswa_agama', $tbl_siswa->siswa_agama); ?>">
					  </div>
					  <div class="form-group">
						<label>Jenis Kelasmin</label>
						<select class="form-control select2" name="siswa_jeniskelamin" >
							<option value="<?php echo set_value('siswa_jeniskelamin', $tbl_siswa->siswa_jeniskelamin); ?>"><?php echo set_value('siswa_jeniskelamin', $tbl_siswa->siswa_jeniskelamin); ?></option>
							<option value="Laki-Laki">Laki-Laki</option>
							<option value="Perempuan">Perempuan</option>
						</select>
					  </div>
					  <div class="form-group">
						<label>Alamat</label>
						<textarea class="form-control" name="siswa_alamat"><?php echo set_value('siswa_alamat', $tbl_siswa->siswa_alamat); ?></textarea>
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