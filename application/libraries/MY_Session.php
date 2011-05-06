<?php

class MY_Session extends CI_session {
    function sess_update() {
        if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) && $_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest') {
            parent::sess_update();
        }
    }
}
