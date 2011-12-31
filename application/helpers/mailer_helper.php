<?php
/**
 * This file contains a class for mailing GetSparks notifications
 */

/**
 * A helper class for mailing things to Getsparks users
 */
class MailerHelper
{
    /**
     * Send a spark rejection email (when an invalid spark is submitted)
     */
    public static function sendSparkRejection($to, $spark_name, $message)
    {
        $CI = &get_instance();
        $sys_email = config_item('system_alert_email');
        $subject = $spark_name.' Removed';
        $content = $CI->load->view('email/spark_rejected', array('title' => $subject,
                                                                 'teaser' => 'Puts up a brick! Your spark submission couldn\'t be verified',
                                                                 'body' => nl2br($message)),
                                                           true);

        self::sendEmail($to, $subject, $content, $message, array('cc' => $sys_email));
    }

    /**
     * Send a generic email without a fancy footer and header
     * @param string $to
     * @param string $subject
     * @param string $body
     * @param string $teaser Optional. Appears as a teaser in some email clients
     */
    public static function sendEmail($to, $subject, $content, $alt = false, $options = array())
    {
        $CI = &get_instance();
        $CI->load->spark('amazon-ses/0.3.0');

        # Main recipient
        if(is_array($to))
        {
            foreach($to as $addr)
                $CI->amazon_ses->to($addr);
        }
        else
        {
            $CI->amazon_ses->to($to);
        }

        # CCs
        if(isset($options['cc']))
        {
            $cc = $options['cc'];
            if(is_array($cc))
            {
                foreach($cc as $addr)
                    $CI->amazon_ses->cc($addr);
            }
            else
            {
                $CI->amazon_ses->cc($cc);
            }
        }

        $CI->amazon_ses->subject($subject);        
        $CI->amazon_ses->message($content);
        
        if($alt)
            $CI->amazon_ses->message_alt($alt);

        $CI->amazon_ses->send();
    }
}
