// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function(){$('.text_area').focus(function(){
	$(this).attr('rows', '8');
});

});

$(document).ready(function(){$('.text_area').blur(function(){
	if($(this).val().length == 0){
		$(this).attr('rows', '1');
	};
});

});


 $(window).scroll (function ()
    {
        // what is the y position of the scroll?
        var y = $(window).scrollTop();
        // whether that's below the start of article?
        if (y >=150)
        {
            $('.notesform').addClass('fixed');
           
        }
        else
        {
            // otherwise, remove it
            $('.notesform').removeClass('fixed');
        }
    });