<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class College extends CI_Controller {

    public function __construct() { 
        parent::__construct();
        
        // Load the user model
        $this->load->model('college_m');

        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
        header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
    }

	public function index()
	{
		var_dump("This is Restful Api controller");
	}

    public function getFollowCollege($user_id)
    {
        if($user_id == 0){
            echo "";
            return;
        }
        echo json_encode($this->college_m->getFollowCollege($user_id));
    }

    public function setFollowCollege()
    {
        $college_id = $this->input->post('college_id');
        $user_id = $this->input->post('user_id');
        $follow = $this->input->post('follow');
        
        if($follow == 1)
            $this->college_m->insertFollow($user_id, $college_id);
        else
            $this->college_m->removeFollow($user_id, $college_id);

        echo "success";
    }

    public function getCollegeDetail($college_id)
    {
        echo json_encode($this->college_m->getCollegeDetail($college_id));
    }
}
