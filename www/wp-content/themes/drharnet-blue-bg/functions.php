<?php
/* Theme setup */
require_once('wp_bootstrap_navwalker.php');


add_action( 'wp_enqueue_scripts', 'drharnet_scripts' );
function drharnet_scripts() {
	wp_enqueue_style( 'style', get_stylesheet_uri() );
		
	wp_enqueue_script( 'bootstap', get_template_directory_uri() . '/js/bootstrap.js' );
	  wp_enqueue_script( 'jquery', get_template_directory_uri() . '/js/query-1.10.2.js' );
wp_enqueue_script( 'newsletter', get_template_directory_uri() . '/js/newsletter.js' );


}

add_action('init', 'drharnet_add_menu');
function drharnet_add_menu()
{
 register_nav_menus( array(
    'primary' => __( 'Primary Menu', 'drharnet' ),
) );

}

add_action('widgets_init','drharnet_add_sidebar');
function drharnet_add_sidebar()
{
  register_sidebar(array(
    'id' => 'right_sidebar',
    'name' => 'Right Sidebar',
    'description' => 'display latest article',
    'before_widget' => '<aside>',
    'after_widget' => '</aside>',
    'before_title' => '<h1>',
    'after_title' => '</h1>'

  ));
}

?>
