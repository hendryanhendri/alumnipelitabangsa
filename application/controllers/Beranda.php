<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_beranda', 'berandaModel');
    date_default_timezone_set('Asia/Jakarta');
  }

  function index()
  {

    $this->load->view('beranda/view_beranda');

  }

}
