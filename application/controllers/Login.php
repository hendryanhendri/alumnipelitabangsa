<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{

  function index()
  {
    $this->load->view('login/form_login');

    $this->load->library('session');
  }

  public function __construct()
	{
		parent::__construct();
		$this->load->database();
		date_default_timezone_set('Asia/Jakarta');
	}

  public function getLoginApps(){
    $this->load->library('session');

    $data['email']        = $this->input->post('email');
    $data['login_date']   = date('Y-m-d');
    $data['login_time']   = date('H:i:s');
    $data['host_name']    = gethostname();
    $data['ip_address']   = $this->input->ip_address();
    $this->load->model('model_login');
    $this->model_login->getInsertHistori($data);

    $e = $this->input->post('email');
		$p = $this->input->post('password');
		$this->load->model('model_login');

		$this->model_login->getMasuk($e,$p);

  }

  public function getKeluar(){
    $this->load->model('model_login');
    $this->model_login->getKeluarApps();

  }

}
