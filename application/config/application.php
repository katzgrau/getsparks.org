<?php

# Installation prefix for windows via CLI
$config['install_prototype_win'] = 'php tools\spark install';

# Installation prefix for unix/osx via CLI
$config['install_prototype_nix'] = 'php tools/spark install';

# The text on the big button on the upper-right
$config['sparks_download_button_text'] = 'Get Sparks Now!';

# Where to send someone after clicking that big button
$config['sparks_download_button_url'] = config_item('base_url').'set-up';

# Get the latest
$config['spark_manager_version_latest'] = '0.0.3';

# Where to download the spark manager (the file)
$config['sparks_download_url'] = config_item('base_url').'static/install/spark-manager-'.$config['spark_manager_version_latest'].'.zip';

# The URL of the Loader override
$config['sparks_loader_url'] = config_item('base_url').'static/install/MY_Loader.php.txt';

# The base number of installs that existed before some db wipes
$config['install_count_base'] = 1232;

# The path to zip archives of paths
$config['archive_path'] = 'static/archives/';

# Where to send system alerts
$config['system_alert_email'] = 'cron@oconf.org';

# The place to email when shit goes wrong
$config['support_email'] = 'ohcrap@getsparks.org';

# The handle we use for twitter, disqus, etc.
$config['service_handle'] = 'getsparks';

# Rating names to keys. Dont' change
$config['ratings'] = array (
    0 => 'hate',
    1 => 'like',
    2 => 'love'
);