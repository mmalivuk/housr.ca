/*
====================================================================== 
Version:       1.0													
Last Updated:	June 06, 2010
Copyright:	   (c) 2010 Joe Nyaggah. All rights reserved.				
====================================================================== 
*/
jQuery(document).ready(function($) {
								
	/*
	===================
	SITEWIDE BEHAVIORS
	===================
	*/
								
	//hide these elements on dom ready
	//you can add elements in between the
	//quotes in a comma-separated list
	$('').hide();
	
	//enlarges textarea when you click (focus)
	//and reduces it when you leave (blur)
	//just a lil extra touch of sexiness
	$('textarea').focus(function(){ 
		$(this).animate({ height:"150px"}, 500); // enlarge height 
	}).blur(function(){ 
		$(this).animate({ height:"50px"}, 500); // reduce height 
	});


	/*
	===================
	COLORBOX (lightbox)
	===================
	*/
	
	//featurelist on front page.
	$("a[rel='featurelist']").colorbox();
	
	//for embedded videos. ajaxed from outside page
	$(".embed").colorbox();
	
	
	/*
	======================
	LEGAL PAGES (lightbox) 
	======================
	*/
	
	//terms and conditons
	$(".legalTerms").colorbox({width:"80%", height:"80%", iframe:true});
	
	//privacy policy
	$(".legalPrivacy").colorbox({width:"80%", height:"80%", iframe:true});
	
	//retrieve password
	$(".retrieve_password").colorbox({width:"40%", height:"50%", iframe:true});



	/*
	============================
	INLINE ELEMENTS (lightbox) 
	============================
	*/
	
	//link to quickLogin form
	$(".quickLogin").colorbox({inline:true, href:"#quickLogin"});
	
	//link to password retrieval form
	$(".retrievePassword").colorbox({inline:true, href:"#retrievePassword"});
	

});//end