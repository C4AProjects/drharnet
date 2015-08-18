<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'drharnet');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'bigas');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '&H+=2V=9e(M-|N[eQLgSK+#fGO6c&I,8?qdV|jh%v$xynxF7.f+QEaaFZDO^nc;*');
define('SECURE_AUTH_KEY',  '+eafuHW_7@Iw<|Vj*EAuxgnrNQE#,6#Xa`g%9QH;aoi<O#wF{m]n)qi|S^?!5rP?');
define('LOGGED_IN_KEY',    '_Y?r|u%}|:@W+7,/ekNwKhsXAF.a6%6pZ?/t/a0t6-VQ}zEUumnaA>ZUZFx%fH&I');
define('NONCE_KEY',        '7(:N0$z:<s`2.5?x[F,>$<MQ{Srh-co|RH4Co#^ZrV2Sn,:coq%q_DP(p1~ZI@x$');
define('AUTH_SALT',        'j4iM(W]U}VK|.g/52I@BYm~!AKpAY}>t RytNj/]dP-64w 4yNV<ngJ32|olT{w7');
define('SECURE_AUTH_SALT', 't,_yz+t:E+M6~bHVTushA>l5xl*lKNkw)ZI?v<g$W<<|=6Sw697LYT[cwxtX(D~w');
define('LOGGED_IN_SALT',   '|Cymz{k?5<(CJbNl8o4|0&eY%&TThNm$vVh<K`s7bI;=|^*cu$(k2`[]-04$L%QA');
define('NONCE_SALT',       'GOL%jga/:^MkL x-*Tg2/;[{RUk~jrT5X+pw0]epJkkUDrwd,oSGzXd=~S<+Bjou');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

