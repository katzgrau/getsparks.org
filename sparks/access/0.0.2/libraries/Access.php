<?php if(class_exists('MY_Controller')) show_error ('The access spark uses a MY_Controller override, but you already have one implemented somewhere. You may need to hack this spark to make it work.');

/**
 * The class for the access spark
 */
class Access
{
    /* The list of URLs to include or exclude from prompt */
    private $_forceList = array();

    /**
     * Contructor. Prompt the user for their credentials
     *  if configured to do so.
     */
    public function  __construct()
    {
        $this->_forceList = config_item('access_force_list');
        
        if(config_item('access_site_protection_enabled'))
        {
            $this->prompt();
        }
    }

    /**
     * Prompt the user for their credentials. Issues a basic HTTP Auth
     *  challenge.
     */
    public function prompt()
    {
        $force_list = $this->_forceList;

        if($force_list && !$this->shouldPrompt())
            return;

        $user = @$_SERVER['PHP_AUTH_USER'];
        $pass = @$_SERVER['PHP_AUTH_PW'];
        
        $logins = config_item('access_logins');
        $realm  = config_item('access_realm');

        if(!array_key_exists($user, $logins) || $logins[$user] != $pass)
        {
            header('HTTP/1.0 401 Unauthorized');
            header('WWW-Authenticate: Basic realm="'.$realm.'"');
            die("<h1>Unauthorized</h1>\n");
        }
    }

    /**
     * Should the user see an auth prompt?
     * @return bool
     */
    public function shouldPrompt()
    {
        $url = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        $in  = FALSE;
        
        foreach($this->_forceList as $pattern)
        {
            if(preg_match("#$pattern#", $url))
            {
                $in = TRUE;
                break;
            }
        }

        # If the list is an INCLUDE list and the url is in it, prompt.
        # If the list is an EXCLUDE list and the url isn't in it, prompt.
        return (config_item('access_force_list_include') === $in);
    }
}