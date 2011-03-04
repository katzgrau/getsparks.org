<?php

# Installation prefix for windows via CLI
$config['install_prototype_win'] = 'C:\reactor-app> php tools\spark install';

# Installation prefix for unix/osx via CLI
$config['install_prototype_nix'] = 'reactor-app $ tools/spark install';

$config['sparks_download_button_text'] = 'Get Sparks Now!';

$config['sparks_download_button_url'] = config_item('base_url').'set-up';

$config['sparks_download_url'] = config_item('base_url').'static/install/spark-manager-0.0.3.zip';

$config['sparks_loader_url'] = config_item('base_url').'static/install/MY_Loader.php.txt';

$config['install_count_base'] = 1232;

$config['archive_path'] = 'static/archives/';

$config['system_alert_email'] = 'cron@oconf.org';

$config['support_email'] = 'ohcrap@getsparks.org';
