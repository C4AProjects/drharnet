<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package DRHARNET
 */

get_header(); ?>
  
  

    <section id="content">
        <div class="container">
           <div class="box">
                <div class="row">
                  
                         <div class="col-md-4">
                       
				<img src="<?php echo  get_template_directory_uri().'/images/author.png'; ?>" alt="Dr harnet" class="img-responsive" />
              
                         </div>
                <div class="col-md-8">
				 <div id="page">
                
                         <?php if(have_posts()) : ?>
						 <?php while(have_posts()) :the_post()?>
						  <h1><?php the_title(); ?></h1>
                          <div id="ctexte">
						   <?php the_content(); ?>
                           </div>
						  <?php endwhile; else: ?>
<h3><?php _e('Sorry, no posts matched your criteria.'); ?></h3>
                          <?php endif; ?>
                   </div>           
                             
                         </div>
                           
                      </div>     
                      
                      
                    
                </div><!--/.row-->
           
         
        </div><!--/.container--> 
         </section><!--/#content-->
      
         <section id="newsletterbox">
        <div class="container">
              
<form id="nform" class="newsletter-form"  action="http://127.0.0.1/harnet2/wp-content/plugins/newsletter/do/subscribe.php">
<div class="form-group">
<label> Get my free tips &amp; updates </label>
</div>
<div class="form-group">
<input type="email"placeholder="Enter your Email address" name="ne"  required> 
</div> 
<div class="form-group">
<button type="submit" class="btn btn-warning btn-lg">Submit</button>
</div> 
</form>

<!--  Display newsletter confirmation message in popup -->

        <div id="newsletter_modal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Confirmation</h4>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

          </div>
 
 </section>
   

<?php get_footer(); ?>