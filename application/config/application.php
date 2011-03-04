<?php

# Installation prefix for windows via CLI
$config['install_prototype_win'] = 'C:\reactor-app> php tools\spark install';

# Installation prefix for unix/osx via CLI
$config['install_prototype_nix'] = 'reactor-app $ tools/spark install';

# The text on the big button on the upper-right
$config['sparks_download_button_text'] = 'Get Sparks Now!';

# Where to send someone after clicking that big button
$config['sparks_download_button_url'] = config_item('base_url').'set-up';

# Where to download the spark manager (the file)
$config['sparks_download_url'] = config_item('base_url').'static/install/spark-manager-0.0.3.zip';

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
