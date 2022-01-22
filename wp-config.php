<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wpdb' );

/** MySQL database username */
define( 'DB_USER', 'wpdbuser' );

/** MySQL database password */
define( 'DB_PASSWORD', 'WpDbPassW0rd01@!.' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'NqhIOHxG#!<1/.VBo<b?s{#C7$+eAaN4AL3.o^]TTkT9f@~G4{p[?5rvrn`_h75T' );
define( 'SECURE_AUTH_KEY',  '$}mM[0uO&9_B=f3IZ]N ;):#VVf}){o9Rc>qyj87v#<IV7{R@=1g@f&xopB=/oLn' );
define( 'LOGGED_IN_KEY',    'C|,7dqT_80qH35p^95LN2uEMZigG[D&Q=#8taa|t6*,tWJ5q/>$_*$h[UO0]cS.o' );
define( 'NONCE_KEY',        '&+U.)U!t;g(I9356Qt}N`K.?_GA!Ug,u{RZ:[eg_e-7*0L-{>;_bUqT KAK[jmJ>' );
define( 'AUTH_SALT',        '<;K|aT,*clRfdG1KGQl`*3xd#WGwN_-WOWX3Hyk lmIo55]dB#Va>4rZ#aq5.&Pm' );
define( 'SECURE_AUTH_SALT', 'Kd<Hn-,]2e>tm!qn)9V)N;wcz]{qycYvw2Rr0%It<DMS Mz<:Bj|^<CYf-gRJIu`' );
define( 'LOGGED_IN_SALT',   '4LXScV^8y|P0eZ>{MUd=i%cg/u@)Z.Bg3H**cEUuJoi!qi~^8Uh#<3}JjhzGh/TA' );
define( 'NONCE_SALT',       '*,!p.4eT2Sx9X}>>4Y8N%_:R~JWOV!rDCOR)gcC}{rOG]L2}Hm7INlS3 `igjV_s' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

define('FS_METHOD', 'direct');
