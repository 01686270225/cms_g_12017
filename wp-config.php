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
define('AUTH_KEY',         '(S[ST,4mXQ9Jy|7O.P{%]I*6i{Sb&}BsE5>B-&]H-F>AjyPaZ*_`=8qMZ/k yYt2');
define('SECURE_AUTH_KEY',  '~oS0GF,_59QEx.R$BA{?/Bf-iDzI0395X(xLX/gEXr8-z]48NK.p$=Xy`Sha;.[}');
define('LOGGED_IN_KEY',    'SM9OQ#;H&m@Q!@PWMaHQ4QF%j=CIWSwE.tJm%8[A>(pa}{lvpI%U^NTdJUlT_2tV');
define('NONCE_KEY',        'G|a) E6qqo[WeHEv#./i91TxJOHwqk:t22aagk?.3a! 8#yg,^n_B.Ot6Wn`W~v8');
define('AUTH_SALT',        '%)rd~VeWOe<]w&s34{>jU9mei;$!&5rU4fdD[46.o`,U|.pQVG*>bK?{O^tEno|)');
define('SECURE_AUTH_SALT', 'z$Z5U0Y%JFm4t=gFOSj&x7oFEqme *yB)/-6*ecfQH~;x>>$mvju{R31tDxcC0.E');
define('LOGGED_IN_SALT',   '/05j*PuKB,![!&z|&Tz3{qS$r4p(fbpcG*._e;J=D-PC!_`|/Q6~MeLlCYEqy3]f');
define('NONCE_SALT',       'IgHtx`*d/|WPV{B!yb;&F5po.e]A:|}0: BIi>&03R {3WQb9tSno8[Lz,)~7#.a');

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
