<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_admin_siswa extends CI_Model {
  // Fungsi untuk menampilkan semua data tabel siswa
  public function view(){
    return $this->db->get('tbl_siswa')->result();
  }
  
  // Fungsi untuk menampilkan data berdasarkan ID nya
  public function view_by($siswa_id){
    $this->db->where('siswa_id', $siswa_id);
    return $this->db->get('tbl_siswa')->row();
  }
  
  // Fungsi untuk melakukan simpan data ke tabel siswa
  public function add(){
    $data = array(
      "siswa_nama" => $this->input->post('siswa_nama'),
      "siswa_kelas" => $this->input->post('siswa_kelas'),
      "siswa_tanggallahir" => $this->input->post('siswa_tanggallahir'),
      "siswa_agama" => $this->input->post('siswa_agama'),
      "siswa_jeniskelamin" => $this->input->post('siswa_jeniskelamin'),
      "siswa_alamat" => $this->input->post('siswa_alamat'),
      "siswa_creator" => $this->session->userdata('user_name')
    );
    
    $this->db->insert('tbl_siswa', $data); // Untuk mengeksekusi perintah insert data
  }
  
  // Fungsi untuk melakukan ubah data berdasarkan ID 
  public function edit($siswa_id){
    $data = array(
      "siswa_nama" => $this->input->post('siswa_nama'),
      "siswa_kelas" => $this->input->post('siswa_kelas'),
      "siswa_tanggallahir" => $this->input->post('siswa_tanggallahir'),
      "siswa_agama" => $this->input->post('siswa_agama'),
      "siswa_jeniskelamin" => $this->input->post('siswa_jeniskelamin'),
      "siswa_alamat" => $this->input->post('siswa_alamat'),
	  "siswa_updater" => $this->session->userdata('user_name')
    );
    
    $this->db->where('siswa_id', $siswa_id);
    $this->db->update('tbl_siswa', $data); // Untuk mengeksekusi perintah update data
  }
  
  // Fungsi untuk melakukan menghapus data berdasarkan ID 
  public function hapus($siswa_id){
    $this->db->where('siswa_id', $siswa_id);
    $this->db->delete('tbl_siswa'); // Untuk mengeksekusi perintah delete data
  }
 
}