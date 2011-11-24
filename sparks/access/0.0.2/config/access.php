<?php

# If this is enabled, it will prompt the user for their username for any
#  page access. Useful for restrcting an entire site.
$config['access_site_protection_enabled'] = true;

# The logins that should be valid. It's an associative array of usernames
#  to passwords
$config['access_logins'] = array (
    # Examples only. You should probably change these.
    'USERNAME'  => 'PASSWORD',
    'kirby'     => 'puckett',
    'putsup'    => 'abrick',
);

# The realm. Should be somethng like Your Site Name
$config['access_realm'] = "Restricted Site";

# Only show the prompt for base URLs that conform to this pattern.
#  This is a standard perl regular expression.
#  Useful for only prompting for a QA site, or even protecting
#  part of a site. This is affected by the settings immediately below,
#  access_force_list_include. If this array is empty the functionality
#  is ignored.
#
# NOTE: Using this list will override anywhere you explicitly call
#  $this->auth->prompt()
$config['access_force_list']      = array('^qa\.getsparks\.org');

# Set to true if the list above SHOULD be prompted for a password. Set to
# false if they should actually be EXcluded
$config['access_force_list_include'] = true;