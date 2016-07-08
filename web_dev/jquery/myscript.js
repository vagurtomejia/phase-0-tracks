
//The jQuery's ready event runs code as soon as the document is ready to be manipulated (when the DOM is finished)
$( document ).ready(function() {

  $( "#btshow" ).click( function() {

    var octopus = document.getElementById("octo_img");
    $( octopus ).show( "slow" );

  });


  $( "#bthide" ).click( function() {

    var octopus = document.getElementById("octo_img");
    $( octopus ).hide( "slow" );

  });


});