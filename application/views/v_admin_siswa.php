  <div class="content-wrapper ">
    <section class="content-header">
      <h1>
        Siswa
      </h1>
    </section>

    <!-- Main content -->
    <section class="content" >
      <div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">
						<a class="btn-sm btn-primary" href="<?php echo base_url("admin/siswa_tambah");?>"><i class="fa fa-plus"></i> <span>Tambah</span></a>
					</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
				  <table id="example1" class="table table-bordered table-striped">
					<thead>
					<tr>
					  <th>No</th>
					  <th>Nama Siswa</th>
					  <th>Kelas</th>
					  <th>Tanggal Lahir</th>
					  <th>Agama</th>
					  <th>Jenis Kelamin</th>
					  <th>Alamat</th>
					  <th>Action</th>
					</tr>
					</thead>
					<tbody>
					<?php
					$no = 1;
					foreach($tbl_siswa as $data){
						  echo "<tr>
						  <td>".$no."</td>
						  <td>".$data->siswa_nama."</td>
						  <td>".$data->siswa_kelas."</td>
						  <td>".$data->siswa_tanggallahir."</td>
						  <td>".$data->siswa_agama."</td>
						  <td>".$data->siswa_jeniskelamin."</td>
						  <td>".$data->siswa_alamat."</td>
						  <td>
						  <a class='btn-sm btn-warning' title='Ubah' href='".base_url("admin/siswa_ubah/".$data->siswa_id)."'><i class='fa fa-pencil-square-o'></i></a>
						  <a title='Hapus' onclick=\"return confirm('Yakin untuk dihapus?')\" class='btn-sm btn-danger' href='".base_url("admin/siswa_aksi_hapus/".$data->siswa_id)."'><i class='fa fa-trash-o'></i></a>&nbsp;";
						  echo "</td>
						  </tr>";
						$no++;
					}
					?>
					</tbody>
				  </table>
				</div>
				<!-- /.box-body -->
			  </div>
		</div>
      </div>
    </section>
  </div>