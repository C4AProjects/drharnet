<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package DrHarnet
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php bloginfo( 'description' ); ?>">
    <meta name="keywords"  content="DR HARNET;Strategist; Author; Speaker; Africa; Afrique; Africa market; Business; Africa market extension; Market entry; Market; Speaking; ">
    <meta name="author" content="Coders4Africa">
     <meta name="generator" content="WordPress <?php bloginfo('version'); ?>" /> 
  <title>
  DR HARNET ::Strategist ::Author ::Speaker;
  </title>
       <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
       
    
    <!--[if lt IE 9]>
    <script src="<?php echo  get_template_directory_uri().'/js/html5shiv.js'; ?>"></script>
      <script src="<?php echo  get_template_directory_uri().'/js/respond.min.js'; ?>"></script>
    <![endif]-->
    <link rel="shortcut icon" href="<?php echo  get_template_directory_uri().'/images/ico/favicon.ico'; ?>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo  get_template_directory_uri().'/images/ico/apple-touch-icon-144-precomposed.png'; ?>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo  get_template_directory_uri().'/images/ico/apple-touch-icon-114-precomposed.png'; ?>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo  get_template_directory_uri().'/images/ico/apple-touch-icon-72-precomposed.png'; ?>">
    <link rel="apple-touch-icon-precomposed" href="<?php echo  get_template_directory_uri().'/images/ico/apple-touch-icon-57-precomposed.png'; ?>">
    <?php wp_head(); ?>
</head><!--/head-->

<body >
    <header id="header" role="banner">
      <div id="navbar" class="navbar navbar-default">
                 <div class="container">
                 <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<?php bloginfo('url'); ?>"> </a>
                </div>
              <?php
			    wp_nav_menu( array(
			        'theme_location'    => 'primary',
			        'depth'             => 2,
			        'container'         => 'div',
			        'container_class'   => 'collapse navbar-collapse navbar-ex1-collapse',
			        'menu_class'        => 'nav navbar-nav',
			        'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
			        'walker'            => new wp_bootstrap_navwalker())
			    );
?>
      
            </div>
        </div>
    </header><!--/#header-->
  
   