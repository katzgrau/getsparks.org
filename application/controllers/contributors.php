<?php
/**
 * This file contains a controller for handling contributors
 */

/**
 * The controller for contributors
 */
class Contributors extends CI_Controller
{
    /**
     * Called for the login page
     */
    public function login()
    {
        // $submit = $this->input->post('submit');

        if ($_POST)
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

    /**
     * Called to logout
     */
    public function logout()
    {
        UserHelper::logout();
        #UserHelper::setNotice("You've been logged out");
        redirect(base_url());
    }

    /**
     * Called to register
     */
    public function register()
    {
        $this->load->spark('robot-helper/1.1');
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
                    UtilityHelper::handleRedirectIfNeeded();

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

    /**
     * Called to load (render) a profile for a user
     * @param string $username The username to load
     */
    public function profile($username)
    {
        $this->load->model('contributor');
        $this->load->model('rating');

        $data['contributor']   = Contributor::findByUsername($username);
        $data['contributions'] = $data['contributor']->getContributions();

        $ids = array(); foreach($data['contributions'] as $spark) $ids[] = $spark->id;
        $data['ratings'] = $this->rating->getRatingsFromList($ids);

        $this->load->view('contributors/profile', $data);
    }

    /**
     * Called when to show the edit page for a user's profile. Works of the current
     *  logged in user
     */
    public function edit()
    {
        $this->load->model('contributor');
        $this->load->helper('form');
        $this->load->library('form_validation');
        
        $contributor_id = UserHelper::getId();
        $contributor    = Contributor::findById($contributor_id);
        $submit         = $this->input->post('submit');

        if($submit)
        {
            if($this->form_validation->run('edit_profile'))
            {
                $update = elements(array('email', 'website', 'real_name', 'password'), $_POST);
                Contributor::update($contributor_id, $update);

                if($update['password'])
                    UserHelper::setNotice("Nice, everything saved, including your new password");
                else
                    UserHelper::setNotice("Nice, everything saved");
            }
            else
            {
                UserHelper::setNotice("Hrm, there was a problem (see below)", FALSE);
            }
        }

        $data = array (
            'contributor' => $contributor
        );

        $this->load->view('contributors/edit', $data);
    }

    /**
     * A validation callback for making sure usernames aren't re-used
     * @param string $email
     * @return bool
     */
    public function username_check($username)
    {
        $this->load->model('contributor');
        $this->load->library('form_validation');

        if(!Contributor::findByUsername($username)) return true;

        $this->form_validation->set_message('username_check', 'This username has already been used');
        return FALSE;
    }

    /**
     * A validation callback for making sure email addresses aren't re-used
     * @param string $email
     * @return bool
     */
    public function email_check($email)
    {
        $this->load->model('contributor');
        $this->load->library('form_validation');

        if(!Contributor::findByEmail($email)) return true;

        $this->form_validation->set_message('email_check', 'This email has already been used');
        return FALSE;
    }

    /**
     * A CodeIgniter validation callback for checking to see the the anti-spam
     *  robot check was correct
     * @param string $answer The submitted value
     * @return bool True if validation passed, false if not
     */
    public function robot_check($answer)
    {
        $this->load->library('form_validation');

        if(spam_check_answer($answer)) return true;

        $this->form_validation->set_message('robot_check', 'The robot check was wrong. hrmm.');
        return FALSE;
    }
}