<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Auth extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

    public function __construct() { 
        parent::__construct();
        
        // Load the user model
        $this->load->model('user_m');

        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
        header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
    }

	public function index()
	{
		var_dump("This is Restful Api controller");
	}

    public function sign_up()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        if(!empty($email) && !empty($password)) {
            if($this->user_m->checkEmail($email))
            {
                echo "email_exist";
                return;
            }
            $result = $this->user_m->insert_entry($email, $password);
            
            if($result == "success"){
                echo "success";
            }else{
                echo "failed";
            }
        }
    }

    public function sign_in()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        if(!empty($email) && !empty($password)) {
            // $user_id = $this->user_m->attempt($email, $password);
            // var_dump($user_id);
            // exit(0);

            if($user_id = $this->user_m->attempt($email, $password)){
                echo $user_id;
                return;
            }
            else {
                echo "failed";
                return;
            }
        }
        echo "failed";
    }
}
