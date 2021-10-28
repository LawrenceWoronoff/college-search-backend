<?php
class User_m extends CI_Model {

    public function __construct() {
        parent::__construct();
        
        // Load the database library
        $this->load->database();
        
        $this->userTbl = 'users';
    }


    public function insert_entry($email, $password)
    {
        $userData = array(
            'email' => $email,
            'password' => md5($password),
        );
        $this->db->insert($this->userTbl, $userData);
        return "success";
    }

    public function checkEmail($email)
    {
        $query = $this->db->select('*')->from($this->userTbl)->where('email', $email)->get();
        $result=$query->result();
        $num_rows=$query->num_rows();

        if($num_rows == 0)
            return false;
        return true;
    }

    public function attempt($email, $password)
    {
        $where = array(
            'email' => $email,
            'password' => md5($password)
        );
        $query = $this->db->select('*')->from($this->userTbl)->where($where)->get();
        $result=$query->row_array();
        
        $num_rows=$query->num_rows();

        if($num_rows != 0)
            return $result['id'];
        return 0;
    }

}