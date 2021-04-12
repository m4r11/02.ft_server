<?php
/**
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}.
 */
/** database wordpress. */
define('DB_NAME', 'wordpress');
/** User MySQL. */
define('DB_USER', 'wordpressuser');
/** pass */
define('DB_PASSWORD', '0000');
/** Address MySQL. */
define('DB_HOST', 'localhost');
/** host */
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');
/**#@+
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org}.
 */
define('AUTH_KEY',         'put your unique phrase here');
define('SECURE_AUTH_KEY',  'put your unique phrase here');
define('LOGGED_IN_KEY',    'put your unique phrase here');
define('NONCE_KEY',        'put your unique phrase here');
define('AUTH_SALT',        'put your unique phrase here');
define('SECURE_AUTH_SALT', 'put your unique phrase here');
define('LOGGED_IN_SALT',   'put your unique phrase here');
define('NONCE_SALT',       'put your unique phrase here');
/**#@-*/
/**
* prefix
*/
$table_prefix = 'wp_';
/**
 * Debug
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
/** include wp conf file*/
require_once(ABSPATH . 'wp-settings.php');

