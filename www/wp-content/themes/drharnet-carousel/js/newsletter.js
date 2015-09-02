jQuery(function($){ // DOM is now read and ready to be manipulated
// Attach a submit handler to the form
$( "#nform" ).submit(function( event ) {
 
  // Stop form from submitting normally
  event.preventDefault();
 
  // Get some values from elements on the page:
  var $form = $( this ),
    email = $form.find( "input[name='ne']" ).val(),
    url = $form.attr( "action" );
 
  // Send the data using post
  var posting = $.post( url, { ne: email } );
 
  // Put the results in a div
  posting.done(function( data ) {
    var content = $( data ).filter( "#container" );
  //$( "#result" ).empty().append( content );
    $(".modal-body").empty().append( content );
          $("#newsletter_modal").modal("show");
  });

});

});