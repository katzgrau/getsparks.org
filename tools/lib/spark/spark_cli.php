<?php

require_once dirname(__FILE__) . '/spark_utils.php';
require_once dirname(__FILE__) . '/spark_exception.php';
require_once dirname(__FILE__) . '/spark_source.php';

define('SPARK_VERSION', '0.0.2');
define('SPARK_PATH', './sparks');

class SparkCLI {

    private static $commands = array(
        'install' => 'install',
        'list' => 'lister',
        'remove' => 'remove',
        'search' => 'search',
        'sources' => 'sources',
        'version' => 'version',
        'help' => 'help',
        '' => 'index' // default action
    );

    function __construct($spark_sources) {
        $this->spark_sources = $spark_sources;
    }

    function execute($command, $args = array()) {
        if (!array_key_exists($command, self::$commands)) {
            $this->failtown("Unknown action: $command");
            return;
        }
        try {
            $method = self::$commands[$command];
            $this->$method($args);
        } catch (Exception $ex) {
            return $this->failtown($ex->getMessage());
        }
    }

    private function index($args) {
        SparkUtils::line('Spark (v' . SPARK_VERSION . ')');
        SparkUtils::line('For help: `php tools/spark help`');
    }

    // list the installed sparks
    private function lister() {
        foreach(scandir(SPARK_PATH) as $item) {
            if (!is_dir(SPARK_PATH . "/$item") || $item[0] == '.') continue;
            foreach (scandir(SPARK_PATH . "/$item") as $ver) {
                if (!is_dir(SPARK_PATH . "/$item/$ver") || $ver[0] == '.') continue;
                SparkUtils::line("$item ($ver)");
            }
        } 
    }

    private function version() {
        SparkUtils::line(SPARK_VERSION);
    }

    private function help() {
        SparkUtils::line('install   # Install a spark');
        SparkUtils::line('remove    # Remove a spark');
        SparkUtils::line('list      # List installed sparks');
        SparkUtils::line('search    # Search for a spark');
        SparkUtils::line('sources   # Display the spark source URL(s)');
        SparkUtils::line('version   # Display the installed spark version');
        SparkUtils::line('help      # This message');
    }

    private function search($args) {
        $term = implode($args, ' ');
        foreach($this->spark_sources as $source) {
            $results = $source->search($term);
            foreach ($results as $result) {
                $result_line = $result->name;
                // only show the source information if there are multiple sources
                if (count($this->spark_sources) > 1) $result_line .= " (source: $source->url)";
                SparkUtils::line($result_line);
            }
        }
    }

    private function sources() {
        foreach($this->spark_sources as $source) {
            SparkUtils::line($source->get_url());
        }
    }

    private function failtown($error_message) {
        SparkUtils::error('Uh-oh!');
        SparkUtils::error($error_message);
    }

    private function remove($args) {
 
        $flats = array();
        $flags = array();
        foreach($args as $arg) {
            preg_match('/^(\-?[a-zA-Z])([^\s]*)$/', $arg, $matches);
            if (count($matches) != 3) continue;
            $matches[0][0] == '-' ? $flags[$matches[1][1]] = $matches[2] : $flats[] = $matches[0];
        }

        if (count($flats) != 1) return $this->failtown('Which spark do you want to remove?');
        $spark_name = $flats[0];
        $version = array_key_exists('v', $flags) ? $flags['v'] : null;

        // figure out what to remove and make sure its isntalled
        $dir_to_remove = SPARK_PATH . ($version == null ? "/$spark_name" : "/$spark_name/$version");
        if (!file_exists($dir_to_remove)) return SparkUtils::notice('Looks like that spark isn\'t installed');

        if ($version == null && !array_key_exists('f', $flags)) throw new SparkException("Please specify a version of remove all with -f");

        SparkUtils::notice("Removing $spark_name (" . ($version ? $version : 'ALL') . ") from $dir_to_remove");
        if (SparkUtils::remove_full_directory($dir_to_remove, true)) SparkUtils::notice('Spark removed successfully!');
        else SparkUtils::notice('Looks like that spark isn\'t installed');
        // attempt to clean up - will not remove unless empty 
        @rmdir(SPARK_PATH . "/$spark_name");
    }

   private function install($args) {

        $flats = array();
        $flags = array();
        foreach($args as $arg) {
            preg_match('/^(\-?[a-zA-Z])([^\s]+)$/', $arg, $matches);
            if (count($matches) != 3) continue;
            $matches[0][0] == '-' ? $flags[$matches[1][1]] = $matches[2] : $flats[] = $matches[0];
        }

        if (count($flats) != 1) return $this->failtown('format: `spark install -v1.0.0 name`');
        $spark_name = $flats[0];
        $version = array_key_exists('v', $flags) ? $flags['v'] : 'HEAD';

        // retrieve the spark details
        foreach ($this->spark_sources as $source) {
            SparkUtils::notice("Retrieving spark detail from " . $source->get_url());
            $spark = $source->get_spark_detail($spark_name, $version);
            if ($spark != null) break;
        }

        // did we find the details?
        if ($spark == null) throw new SparkException("Unable to find spark: $spark_name ($version) in any sources");

        // verify the spark, and put out warnings if needed
        $spark->verify();

        // retrieve the spark
        SparkUtils::notice("From Downtown! Retrieving spark from " . $spark->location_detail());
        if (!$spark->retrieve()) throw new SparkException('Failed to retrieve the spark ;(');

        SparkUtils::notice('Installing spark');
        $spark->install();
        SparkUtils::notice('Spark installed to ' . $spark->installed_path() . ' - You\'re on fire!');
    }

}
