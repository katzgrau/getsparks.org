<?php

class Contributors extends CI_Controller
{
    public function login()
    {
        $submit = $this->input->post('submit');

        if($submit)
        {
            $email    = $this->input->post('email');
            $password = $this->input->post('password');

            $this->load->model('contributor');

            $contributor = Contributor::getByLogin($email, $password);

            if($contributor)
            {
                UserHelper::setLoggedIn($contributor);
                UserHelper::setNotice("Sup, {$contributor->real_name}?");
                redirect(base_url() . 'contributors/' . $contributor->username . '/profile');
            }
            else
            {
                UserHelper::setNotice("Whoops, your login failed! Try again.");
            }
        }

        $this->load->view('contributors/login');
    }

    public function logout()
    {
        UserHelper::logout();
        #UserHelper::setNotice("You've been logged out");
        redirect(base_url());
    }

    public function register()
    {
        $submit = $this->input->post('submit');

        if($submit)
        {
            $this->load->model('contributor');
            $insert = elements(array('username', 'email', 'real_name', 'password', 'website'), $_POST);

            if(Contributor::insert($insert))
            {
                UserHelper::setNotice("Yay! Start contributing sparks!");
                redirect(base_url() . 'contributors/' . $insert['username'] . '/profile');
            }
            else
            {
                UserHelper::setNotice("Whoa. That didn't work. Sorry?", FALSE);
            }
        }
        $this->load->view('contributors/register');
    }

    public function profile($username)
    {
        $this->load->model('contributor');

        $data['contributor']   = Contributor::findByUsername($username);
        $data['contributions'] = $data['contributor']->getContributions();

        $this->load->view('contributors/profile', $data);
    }
}