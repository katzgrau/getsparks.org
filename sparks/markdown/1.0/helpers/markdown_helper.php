<?php
/**
 * This file contains a CodeIgniter spark helper for PHP Markdown. The Parser
 *  is a third-party library found at:
 *  @link http://michelf.com/projects/php-markdown/
 */

/**
 * Include the markdown parse
 * @see Markdown_Parser
 */
require_once dirname(__FILE__) . '/../vendor/markdown.php';

if(!function_exists('parse_markdown'))
{
    /**
     * Parse a block of markdown and get HTML back
     * @param string $markdown MArkdown text
     * @return string HTML
     */
    function parse_markdown($markdown)
    {
        return Markdown($markdown);
    }
}