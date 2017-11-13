<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'vertrigo');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Ryg54{6%$;mc)t3^,Kr&gx4++vQl6 =y0E,b$?KX-T&*wG%N}/;58O`kM_]b]RjD');
define('SECURE_AUTH_KEY',  '=sy73I7.@U10RJV2Y7zgM+;(v@iaw.N<%gi)l&i[T_;P6$AO+046:_DCsCI3{*:_');
define('LOGGED_IN_KEY',    '<USmv8-N_OQe0a9w[B25T:_lq^f0Ysd7;]U;Wxg>e}QB@ODuJVDNJ<4>,)kxbF{d');
define('NONCE_KEY',        'RM=ZeMtOWdkkNUx`2c}qV~HxhwQ&)2dsz&2QW?Lmf.FezGf*qQWm_)pDbalc,km8');
define('AUTH_SALT',        's^7}M]yw7%C7olqDWmJ3a9?{-j{v:C#Xe($6q_77F5.)PPI.l!^<EK5oa;myWvDh');
define('SECURE_AUTH_SALT', '*YDv?Ncmcj RnJz_d:jKL$F<jT/*#Phl,f2}Z1JBJil;SHt4iM$r(=P?a6?e_8-T');
define('LOGGED_IN_SALT',   'iV[u.j/$AR_(+h0M_H Akc*c|Zv*m:L* ~X9K4mB*BB1]8a$m`+*YFXa@Cb/Py!8');
define('NONCE_SALT',       '- =Div+Ru5?7[WqkVs7-A|>l`fEwVjbR+p~v94#v+9e5SPBjBB2W<dihS=jCz{~z');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
