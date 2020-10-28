 <?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Crud_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function clear_cache()
    {
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
    }

    /////////GET NAME BY TABLE NAME AND ID/////////////
    function get_type_name_by_id($type, $type_id = '', $field = 'name')
    {
        if ($type_id != '') {
            $l = $this->db->get_where($type, array(
                $type . '_id' => $type_id
            ));
            $n = $l->num_rows();
            if ($n > 0) {
                return $l->row()->$field;
            }
        }
    }
    function get_settings_value($type, $type_name = '', $field = 'value')
    {
        if ($type_name != '') {
            return $this->db->get_where($type, array('type' => $type_name))->row()->$field;
        }
    }

     //GETTING ADMIN PERMISSION
    function admin_permission($codename)
    {
       $admin_id   = $this->session->userdata('admin_id');
        $admin        = $this->db->get_where('admin', array(
            'admin_id' => $admin_id
        ))->row();
        $this->benchmark->mark_time();
        $permission = $this->db->get_where('permission', array(
            'codename' => $codename
        ))->row()->permission_id;
        if ($admin->role == 1) {
            return true;
        } else {
            $role             = $admin->role;
            $role_permissions = json_decode($this->Crud_model->get_type_name_by_id('role', $role, 'permission'));
            if (in_array($permission, $role_permissions)) {
                return true;
            } else {
                return false;
            }
        }/**/
    }



    /////////SELECT HTML/////////////
    function select_html($from, $name, $field, $type, $class, $e_match = '', $condition = '', $c_match = '', $onchange = '',$condition_type='single')
    {
        $return = '';
        $other  = '';
        $multi  = 'no';
        $phrase = 'Choose a ' . $name;
        if ($class == 'demo-cs-multiselect') {
            $other = 'multiple';
            $name  = $name . '[]';
            if ($type == 'edit') {
                $e_match = json_decode($e_match);
                if ($e_match == NULL) {
                    $e_match = array();
                }
                $multi = 'yes';
            }
        }
        $return = '<select name="' . $name . '" onChange="' . $onchange . '(this.value,this)" class="' . $class . '" ' . $other . '  data-placeholder="' . $phrase . '" tabindex="2" data-hide-disabled="true" >';
        if (!is_array($from)) {
            if ($condition == '') {
                $all = $this->db->get($from)->result_array();
            } else if ($condition !== '') {
                if($condition_type=='single'){
                    $all = $this->db->get_where($from, array(
                        $condition => $c_match
                    ))->result_array();
                }else if($condition_type=='multi'){
                    $this->db->where_in($condition,$c_match);
                    $all = $this->db->get($from)->result_array();
                }
            }

            $return .= '<option value="">Choose one</option>';

            foreach ($all as $row):
                if ($type == 'add') {
                    $return .= '<option value="' . $row[$from . '_id'] . '">' . $row[$field] . '</option>';
                } else if ($type == 'edit') {
                    $return .= '<option value="' . $row[$from . '_id'] . '" ';
                    if ($multi == 'no') {
                        if ($row[$from . '_id'] == $e_match) {
                            $return .= 'selected=."selected"';
                        }
                    } else if ($multi == 'yes') {
                        if (in_array($row[$from . '_id'], $e_match)) {
                            $return .= 'selected=."selected"';
                        }
                    }
                    $return .= '>' . $row[$field] . '</option>';
                }
            endforeach;
        } else {
            $all = $from;
            $return .= '<option value="">Choose one</option>';
            foreach ($all as $row):
                if ($type == 'add') {
                    $return .= '<option value="' . $row . '">';
                    if ($condition == '') {
                        $return .= ucfirst(str_replace('_', ' ', $row));
                    } else {
                        $return .= $this->Crud_model->get_type_name_by_id($condition, $row, $c_match);
                    }
                    $return .= '</option>';
                } else if ($type == 'edit') {
                    $return .= '<option value="' . $row . '" ';
                    if ($row == $e_match) {
                        $return .= 'selected=."selected"';
                    }
                    $return .= '>';

                    if ($condition == '') {
                        $return .= ucfirst(str_replace('_', ' ', $row));
                    } else {
                        $return .= $this->Crud_model->get_type_name_by_id($condition, $row, $c_match);
                    }

                    $return .= '</option>';
                }
            endforeach;
        }
        $return .= '</select>';
        return $return;
    }

   

   
    function demo(){
        if($this->config->item('demo') == 0 )
        {
            return 0;
        }else{
            return 1;
        }
    }

    function allusers($membership,$limit,$start,$col,$dir)
    {
        $this->db->limit($limit,$start)->order_by($col,$dir);
        $this->db->select('score.score,score.created_at,member.first_name,member_profile_id');
        $this->db->from('score');
        $this->db->join('member', 'member.member_id = score.member_id', 'left');
        $query = $this->db->get();
        //echo $this->db->last_query();
        //die();
        if($query->num_rows()>0)
        {
            //echo "string";
            //die();
            return $query->result();
        }
        else
        {
            return null;
        }
    }

    function users_search($membership,$limit,$start,$search,$col,$dir)
    {
        $this->db->limit($limit,$start);
        $this->db->order_by($col,$dir);
        $this->db->where("(score.score LIKE '%$search%' OR member.first_name LIKE '%$search%' OR member.last_name LIKE '%$search%' OR score.created_at LIKE '%$search%' OR member_profile_id LIKE '%$search%')");

        $this->db->select('score.score,score.created_at,member.first_name,member_profile_id');
        $this->db->from('score');
        $this->db->join('member', 'member.member_id = score.member_id', 'left');
        $query = $this->db->get();
        //echo $this->db->last_query();
        //die();
        if($query->num_rows()>0)
        {
            return $query->result();
        }
        else
        {
            return null;
        }
    }

    function users_search_count($membership,$search)
    {
        $this->db->where("(score.score LIKE '%$search%' OR member.first_name LIKE '%$search%' OR member.last_name LIKE '%$search%' OR score.created_at LIKE '%$search%')");

        $this->db->select('score.score,score.created_at,member.first_name');
        $this->db->from('score');
        $this->db->join('member', 'member.member_id = score.member_id', 'left');
        $query = $this->db->get();

        return $query->num_rows();
    }

    function allusers_count()
    {
        $query = $this->db->get_where("score")->result();
        return count($query);
    }

    function check_login($table, $username, $password)
    {
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where('email', $username);
        $this->db->where('password', $password);
        $query_result = $this->db->get();
        $result = $query_result->row();
        return $result;
    }

     function timezone()
    {
        $timezone = $this->db->get_where('general_settings', array('type'=>'time_zone'))->row()->value;
        if($timezone != NULL){
            date_default_timezone_set ($timezone);
        }else{
            date_default_timezone_set('Asia/Dhaka');
        }
    }



}
