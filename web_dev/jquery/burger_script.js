console.log("The script is working!");

$(document).ready(function(){
    $(".two").click(function(){
        $(this).hide();
    });
});

$(document).ready(function(){
    $(".zero").click(function(){
        $(this).css("background-color", "red");
    });
});

$( ".one" ).append( "<strong>Let's be honest though.</strong>" );


