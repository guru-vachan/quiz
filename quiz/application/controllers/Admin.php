<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {


	function __construct() {
        parent::__construct();
        $this->system_name = $this->Crud_model->get_type_name_by_id('general_settings', '1', 'value');
        $this->system_email = $this->Crud_model->get_type_name_by_id('general_settings', '2', 'value');
        $this->system_title = $this->Crud_model->get_type_name_by_id('general_settings', '3', 'value');
		$this->Crud_model->timezone();
		$this->load->library('spreadsheet');
    }

	public function index()
	{
		if ($this->admin_permission() == FALSE) {
        	redirect(base_url().'admin/login', 'refresh');
		}
		else{
			$page_data['title'] = "Admin || ".$this->system_title;
			$page_data['top'] = "dashboard.php";
			$page_data['folder'] = "dashboard";
			$page_data['file'] = "index.php";
			$page_data['bottom'] = "dashboard.php";
			$page_data['page_name'] = "dashboard";
			$this->load->view('back/index', $page_data);
		}
	}

	function admin_permission()
	{
		$admin_id = $this->session->userdata('admin_id');
        if ($admin_id == NULL) {
            return FALSE;
        }
        else {
        	return TRUE;
        }
	}



	function login()
	{
		if ($this->admin_permission() == TRUE) {
        	redirect(base_url().'admin/', 'refresh');
		}
		else{
			$page_data['login_error'] = "";
            if ($this->session->flashdata('alert') == "login_error") {
                $page_data['login_error'] = translate("Your_email_or_password_is_Invalid!");
            }
            if ($this->session->flashdata('alert') == "not_sent") {
                $page_data['login_error'] = translate("failed_to_send_your_email!");
            }
            if ($this->session->flashdata('alert') == "no_email") {
                $page_data['login_error'] = translate("Your_email__is_Invalid!");
            }
            if ($this->session->flashdata('alert') == "email_sent") {
                $page_data['success_alert'] = translate("email_sent_successfully!");
            }
			$this->load->view('back/login', $page_data);
		}
	}

	function check_login()
	{
		if ($this->admin_permission() == TRUE) {
        	redirect(base_url().'admin/', 'refresh');
		}
		else{
			$username = $this->input->post('email');
	        $password = sha1($this->input->post('password'));

	        $result = $this->Crud_model->check_login('admin', $username, $password);
	        // echo $this->db->last_query();

	        $data = array();
	        if($result)
	        {
	            $data['admin_name'] = $result->email;
	            $data['admin_id'] = $result->admin_id;

	            $this->session->set_userdata($data);

	            redirect( base_url().'admin/', 'refresh' );
	        }
	        else {
	            $this->session->set_flashdata('alert','login_error');

	            redirect( base_url().'admin/login', 'refresh' );
	        }
		}
	}

	function logout()
	{
		$this->session->unset_userdata('admin_name');
        $this->session->unset_userdata('admin_id');

        redirect(base_url().'admin/login', 'refresh');
	}

	function test($para1="",$para2="")
	{
		if ($this->admin_permission() == FALSE) {
        	redirect(base_url().'admin/login', 'refresh');
		}
		else{
		$page_data['title'] = "Admin";

		if ($para2=="list_data") {
				if ($para1=="listing") {
					
					$columns = array(
                            0 =>'member_profile_id',
                            1 =>'first_name',
                            2 =>'score',
							3 =>'created_at',
                        );
					
		  		}


				$limit = $this->input->post('length');
		        $start = $this->input->post('start');

				if($this->input->post('order')[0]['column'] == 0){
					$order = 'member_profile_id';
			        $dir = 'desc';
				}
				else{
					 $order = $columns[$this->input->post('order')[0]['column']];
			         $dir = $this->input->post('order')[0]['dir'];
				}

		        if ($para1=="listing") {
		        	$member_type = 1;
		        }

	        	$totalData = $this->Crud_model->allusers_count($member_type);

	        	$totalFiltered = $totalData;

		        if(empty($this->input->post('search')['value']))
		        {

		        	$members = $this->Crud_model->allusers($member_type,$limit,$start,$order,$dir);
		        }
		        else {
		            $search = $this->input->post('search')['value'];

		            $members =  $this->Crud_model->users_search($member_type,$limit,$start,$search,$order,$dir);

		            $totalFiltered = $this->Crud_model->users_search_count($member_type,$search);
		        }

		        $data = array();
		        if(!empty($members))
		        {
		        	// if ($dir == 'asc') { $i = $start + 1; } elseif ($dir == 'desc') { $i = $totalFiltered - $start; }
		        	foreach ($members as $member)
		          	{
		           		
						$nestedData['member_id'] = $member->member_profile_id;
						$nestedData['name'] = $member->first_name;
				        $nestedData['created_at'] = $member->created_at;
				        $nestedData['score'] = $member->score;

			            $data[] = $nestedData;
			            
		            }
		        }

		        $json_data = array(
		                    "draw"            => intval($this->input->post('draw')),
		                    "recordsTotal"    => intval($totalData),
		                    "recordsFiltered" => intval($totalFiltered),
		                    "data"            => $data
		                    );
		        echo json_encode($json_data);
			}

			elseif ($para1=="listing") {
				if ($para2=="") {
					$page_data['top'] = "members/index.php";
					$page_data['folder'] = "members";
					$page_data['file'] = "member_score.php";
					$page_data['bottom'] = "members/index.php";
					$this->db->select('score.score,score.created_at,member.first_name');
					$this->db->from('score');
					$this->db->join('member', 'member.member_id = score.member_id', 'left');
					$query = $this->db->get();
					$page_data['data_res'] = $query->result();
					
				}
				
			
				$page_data['member_type'] = "Free";
				$page_data['parameter'] 	= "free_members";
				$page_data['page_name'] 	= "admin";
				$this->load->view('back/index', $page_data);
			}
		}
	}

}
