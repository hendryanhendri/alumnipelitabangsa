<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_security extends CI_Model{

  public function getsecurity()
  	{
  		$mahasiswa = $this->session->userdata('email');
  		if(empty($mahasiswa))
  		{
  			$this->session->sess_destroy();
  			redirect('Login');
  		}
  	}

}
