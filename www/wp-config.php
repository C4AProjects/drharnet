<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Le script de création wp-config.php utilise ce fichier lors de l'installation.
 * Vous n'avez pas à utiliser l'interface web, vous pouvez directement
 * renommer ce fichier en "wp-config.php" et remplir les variables à la main.
 * 
 * Ce fichier contient les configurations suivantes :
 * 
 * * réglages MySQL ;
 * * clefs secrètes ;
 * * préfixe de tables de la base de données ;
 * * ABSPATH.
 * 
 * @link https://codex.wordpress.org/Editing_wp-config.php 
 * 
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'harnet');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'harnet');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'harnet');

/** Adresse de l'hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données. 
  * N'y touchez que si vous savez ce que vous faites. 
  */
define('DB_COLLATE', '');

/**#@+
 * Clefs uniques d'authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant 
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n'importe quel moment, afin d'invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'mY=%0Id,Hq$vii(F:Q@ikW=l.}^QtKNo#o7ue&.r|e7Jq$8u CR$8NzvsNZC,A.Z');
define('SECURE_AUTH_KEY',  '5_.Xo90brW[w.>J-QfmiS/@HvA8=Rk-3.x.CF*gPp{&R<8tvPG?2KT.?sK3%lJI~');
define('LOGGED_IN_KEY',    'quRql6CKRRk*Z<rjc2euY1+jdtF<; B,!_A~h[pOGwMf]3dcZXW2vYACbBuC|/2k');
define('NONCE_KEY',        'I/4?]%:Ph=P1zo}?Hx9{(@J/pc`Z@]xy;$qjotWc+24)t|HNUE48g7W~6vZE!$W^');
define('AUTH_SALT',        'B<DM#E_Q=wW>a,NbTvuZfvuWu:$B5V}}9GEGU<WY,IBDW.8I9ObzXC@vZVR1$@tu');
define('SECURE_AUTH_SALT', 'c2$5)LY^L3NQzT,P;CF2VE%WYs?N_Q&Kt/UZ^OQGrC!T|,)K 5k{LRzVorb9G5`W');
define('LOGGED_IN_SALT',   ';1!t#dfT|`<nFLUS~HG4PzCc1C1qH}CHgx eerJ.QB~y%ghvWj.ab-zexPE8-[ls');
define('NONCE_SALT',       'RO%;_Cc0G6!N-)Y0,`T=U:5)niM4_C>g7AkW.;lpx+zfZ);<MFd8}U$>*P]e6Rb0');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique. 
 * N'utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés!
 */
$table_prefix  = 'wp_';

/** 
 * Pour les développeurs : le mode déboguage de WordPress.
 * 
 * En passant la valeur suivante à "true", vous activez l'affichage des
 * notifications d'erreurs pendant votre essais.
 * Il est fortemment recommandé que les développeurs d'extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de 
 * développement.
 * 
 * Pour obtenir plus d'information sur les constantes 
 * qui peuvent être utilisée pour le déboguage, consultez le Codex.
 * 
 * @link https://codex.wordpress.org/Debugging_in_WordPress 
 */ 
define('WP_DEBUG', false); 

/* C'est tout, ne touchez pas à ce qui suit ! Bon blogging ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');