<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_admin_alternatif extends CI_Model {
  // Fungsi untuk menampilkan semua data tabel alternatifs
  public function view(){
    $this->db->select('*');
	$this->db->from('tbl_alternatif');
	$this->db->join('tbl_kriteria','tbl_alternatif.kriteria_id=tbl_kriteria.kriteria_id');
	$this->db->join('tbl_siswa','tbl_alternatif.siswa_id=tbl_siswa.siswa_id');
	$query = $this->db->get();
	return $query->result();
  }
  
  // Fungsi untuk menampilkan data berdasarkan ID nya
  public function view_by($alternatif_id){
	$this->db->select('*');
	$this->db->from('tbl_alternatif');
	$this->db->join('tbl_kriteria','tbl_alternatif.kriteria_id=tbl_kriteria.kriteria_id');
	$this->db->join('tbl_siswa','tbl_alternatif.siswa_id=tbl_siswa.siswa_id');
    $this->db->where('alternatif_id', $alternatif_id);
    return $this->db->get()->row();
  }
  
  // Fungsi untuk melakukan simpan data ke tabel alternatif
  public function add(){
    $data = array(
      "kriteria_id" => $this->input->post('kriteria_id'),
      "siswa_id" => $this->input->post('siswa_id'),
      "alternatif_nilai" => $this->input->post('alternatif_nilai'),
      "alternatif_creator" => $this->session->userdata('user_name')
    );
    
    $this->db->insert('tbl_alternatif', $data); // Untuk mengeksekusi perintah insert data
  }
  
  // Fungsi untuk melakukan ubah data berdasarkan ID 
  public function edit($alternatif_id){
    $data = array(
      "kriteria_id" => $this->input->post('kriteria_id'),
      "siswa_id" => $this->input->post('siswa_id'),
      "alternatif_nilai" => $this->input->post('alternatif_nilai'),
	  "alternatif_updater" => $this->session->userdata('user_name')
    );
    
    $this->db->where('alternatif_id', $alternatif_id);
    $this->db->update('tbl_alternatif', $data); // Untuk mengeksekusi perintah update data
  }
  
  
  // Fungsi untuk melakukan menghapus data berdasarkan ID
  public function hapus($alternatif_id){
    $this->db->where('alternatif_id', $alternatif_id);
    $this->db->delete('tbl_alternatif'); // Untuk mengeksekusi perintah delete data
  }
}