<?php 
/**
 * This file contains function(s) for combating robot form submissions
 */

/**
 * Get an auto-generated question and answer for use with checking for human-ness.
 *  There are more sure-fire way to do this (cpatcha), but this is simple for the
 *  time being, and will probably block 99.9% of spam.
 * @return array A two element array containing a question and answer, respectively
 */
function get_spam_check()
{
    $CI = &get_instance();
    $CI->load->helper('array');
    
    $op  = random_element(array('add', 'sub', 'mult', 'div'));
    $ops = array (
        'add' => array('+', 'plus'),
        'sub' => array('-', 'minus'),
        'mult'=> array('*', 'times'),
        'div' => array('/', 'divided by', '&divide;')
    );

    $operator = random_element($ops[$op]);

    if($op == 'add')
    {
        $a = rand(0, 10);
        $b = rand(0, 10);
        $test = array ("What is $a $operator $b?", ($a + $b));
    }
    elseif($op == 'sub')
    {
        $a = rand(0, 10);
        $b = rand($a, 10 + $a);
        $test = array ("What is $b $operator $a?", ($b - $a));
    }
    elseif($op == 'mult')
    {
        $a = rand(0, 5);
        $b = rand(0, 5);
        $test = array ("What is $a $operator $b?", ($a * $b));
    }
    elseif($op == 'div')
    {
        $a = rand(1, 5);
        $b = rand(0, 5);
        $r = $a * $b;
        $test = array ("What is $r $operator $a?", ($r / $a));
    }

    return $test;
}


