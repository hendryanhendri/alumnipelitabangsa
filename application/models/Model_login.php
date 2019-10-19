<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_login extends CI_Model{

  public function __construct()
  {
    parent::__construct();
    $this->load->database();
    date_default_timezone_set('Asia/Jakarta');
  }

  public function getInsertHistori($data){
    $this->db->insert('t_histori_masuk', $data);
  }

  public function getMasuk($e, $p){
    $pswd = md5($p);
    $this->db->where('email', $e);
    $this->db->where('password', $pswd);
    $query = $this->db->get('view_mahasiswa');
    if($query->num_rows() > 0){
      foreach ($query->result() as $row) {
        $sess = array(
          'id_mahasiswa'      => $row->id_mahasiswa,
          'nim'               => $row->nim,
          'jurusan'           => $row->jurusan,
          'kategori_jurusan'  => $row->kategori_jurusan,
          'nama_lengkap'      => $row->nama_lengkap,
          'jenis_kelamin'     => $eow->jenis_kelamin,
          'email'             => $row->email,
          'telp'              => $row->telp,
          'alamat'            => $row->alamat,
          'kota_lahir'        => $row->kota_lahir,
          'photo'             => $row->photo,
          'kewarganegaraan'   => $row->kewarganegaraan,
          'createdby'         => $row->createdby,
          'createddate'       => $row->createddate,
          'updatedby'         => $row->updatedby,
          'updateddate'       => $row->updateddate);

        $this->session->set_userdata($sess);
        session_start();
        redirect('Beranda');
      }
    }
    else {
      $this->session->set_flashdata('info', 'Maaf mohon cek kembali kombinasi sandi dan email anda dengan benar!');
      redirect('Login');
    }
  }

  public function getKeluarApps(){
    $this->session->sess_destroy();
    $this->session->set_flashdata('info1', 'Anda berhasil keluar dari aplikasi, Terimakasih ');
    redirect('Login', false);
  }

}
