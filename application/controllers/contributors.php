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

                UtilityHelper::handleRedirectIfNeeded();

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
        $this->load->helper('robot');
        $this->load->helper('form');
        $this->load->library('form_validation');
        
        $submit = $this->input->post('submit');

        if($submit)
        {
            if($this->form_validation->run('registration'))
            {
                $this->load->model('contributor');
                $insert = elements(array('username', 'email', 'real_name', 'password', 'website'), $_POST);

                if(Contributor::insert($insert))
                {
                    UserHelper::setNotice("Yay! Start contributing sparks!");
                    UserHelper::setLoggedIn(Contributor::findByUsername($insert['username']));

                    redirect(base_url() . 'contributors/' . $insert['username'] . '/profile');
                }
                else
                {
                    UserHelper::setNotice("Whoa. That didn't work. Sorry?", FALSE);
                }
            }
            else
            {
                UserHelper::setNotice('Whoops. There were some errors. Check below and re-submit!');
            }
        }

        list($question, $answer) = get_spam_check();
       
        $data['spam_question'] = $question;
        $data['spam_answer']   = $answer;

        $this->load->view('contributors/register', $data);
    }

    public function profile($username)
    {
        $this->load->model('contributor');

        $data['contributor']   = Contributor::findByUsername($username);
        $data['contributions'] = $data['contributor']->getContributions();

        $this->load->view('contributors/profile', $data);
    }

    public function robot_check($answer)
    {
        $this->load->library('form_validation');

        if(spam_check_answer($answer)) return true;

        $this->form_validation->set_message('robot_check', 'The robot check was wrong. hrmm.');
        return FALSE;
    }
}