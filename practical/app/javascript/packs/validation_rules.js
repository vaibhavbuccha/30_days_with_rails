$(document).ready(function() {

	//Admin login
	$("#new_user").validate({
	    rules: {
	      '#user_email': {
	      	required : true
	      },
	      '#user_password':{
	      	required : true
	      }
	    },
	    messages: {
	      '#user_email': {required : "Email is required field"},
	      '#user_password': {required : "Password is required field"}
	    }
  	});



});
