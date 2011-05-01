<?php

class Ajax_Controller extends CI_Controller
{
    public function success($data)
    {
        $data['success'] = TRUE;
        $data['code'] = 200;
        $this->output->set_output(json_encode($data));
    }

    public function error($message = 'Unknown error', $http_code = 400, $data = array())
    {
        $data['message'] = $message;
        $data['success'] = FALSE;
        $data['code'] = $http_code;
        
        $this->output->set_status_header($http_code, 'text');
        $this->output->set_output(json_encode($data));
    }
}