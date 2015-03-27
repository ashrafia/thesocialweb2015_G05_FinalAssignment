

  	// Define global App settings
	window.fbAsyncInit = function() {
    	FB.init({
	      appId      : '416168255230551', // <----------- change this to your api key
	      xfbml      : true,
	      version    : 'v2.1'
    	});
  	};

	// Initialization of Facebook API
	(function(d, s, id){
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) {return;}
		js = d.createElement(s); js.id = id;
		js.src = "//connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	// Start of logics
	$(function(){
		$('#search-link').hide();
		var isLoggedin = false;
		var loginFlag = 0;
		$('select').material_select();

		$('#search-link').click(function(e){
			e.preventDefault();
			if (isLoggedin) {
				$('#searchModal').openModal();
			};
		});

		function getFacebookData() {
			isLoggedin = true;
			$('#search-link').show();
			var tagCloudWords = [];
			var context;
			FB.api('/me', {fields: 'id,first_name,last_name,birthday,gender,groups.limit(20){description,name},context,events{description,name},interests.limit(20){name,talking_about_count}'}, function(response) {
					loginFlag = 1;
					$('#name').append(response.first_name+' '+response.last_name);
					$('#dob').append(response.birthday);
					$('#gender').append(response.gender);
					$('#user-id').attr("value", response.id);
					try {
						$('#friends').append(response.context.mutual_friends.summary.total_count+' friends');
					} catch(TypeError) {
						console.log('TypeError @  each response.context.mutual_friends.summary.total_count' + TypeError);
						console.log('Do you have any friends?');
						$('#friends').append('');
					}

					try {
						$.each( response.groups.data, function( i, val ) {

								if (val.name != null) {
									tagCloudWords.push({text: val.name, weight: i});
								}
								$('#groups ul').append(
		    						'<li>'+ 
										'<div class="group" gid="'+val.id+'">' +
				    						'<div class="collapsible-header">'+
												'<div class="title">'+val.name+'</div>' +
											'</div>'+
											'<div class="collapsible-body">'+
												'<div>'+val.description+'</div>'+
											'</div>'+
										'</div>'+
									'</li>'							
								);

						});  
					} catch(TypeError) {
						console.log(TypeError);
						console.log('Are you in any groups?');
					}

					try {
						$.each( response.context.mutual_likes.data, function( i, val ) {

							var list = "";
							

							if (val.category_list != null) {

								$.each ( val.category_list, function( i2, val2 ) {
									
									if (val2.name != null) {
										list += val2.name + '<br />';
									}

								});

									if (val.name != null) {
										tagCloudWords.push({text: val.name, weight: i});
									}


									$('#pages ul').append(
			    						'<li>'+ 
											'<div class="group" pid="'+val.id+'">' +
					    						'<div class="collapsible-header">'+
													'<div class="title">'+val.name+' ('+val.category+')</div>' +
												'</div>'+
												'<div class="collapsible-body">'+
													'<div>'+list+'</div>'+
												'</div>'+
											'</div>'+
										'</li>'							
									);
							}
						});  
					} catch(TypeError) {
						console.log('TypeError @  each response.context.mutual_likes.data' + TypeError);
						console.log('Did you like a page?');
					}


					$('#wordCloud').jQCloud(tagCloudWords, {
		  				autoResize: true,
		  				colors: ["#800026", "#bd0026", "#e31a1c", "#E73691", "#fd8d3c", "#feb24c", "#fed976", "orange", "red"]
					});	

					console.log(response);
					
					$("#pic").append('<img src="https://graph.facebook.com/'+response.id+'/picture?type=large">');

					$('.hide').removeClass("hide");
			    	$('#loginContainer').remove();
					/*
					FB.api('me/picture', function(Imgresponse){
						console.log(Imgresponse);
						console.log(Imgresponse.data.url);
						var img = '<img src="'+Imgresponse.data.url+'"?type=large>'
						$("#data").append(img);
					})
					*/
				});
		}

		function checkUser(response) {
			$.post('facebook/ajax.php', {action : 'check', userID : response.authResponse.userID}).done(function(res){
		  		if(res.res == "register") {
		  			FB.api('/me', {fields : "id,first_name,last_name,birthday,gender,context,name,groups"},function(user){
		  				//console.log(user);
		  				$('#registerModal img').attr('src', 'https://graph.facebook.com/'+user.id+'/picture?type=large')
		  				$('#registerModal h4').append(user.name+' !');
		  				$("#registerModal").openModal({
							dismissible : false
						});
						$('#registerButton').click(function(e){
							e.preventDefault();
							var location = $("#register-location").val();
							var height = $("#register-height").val();
							var style = '';
							$('.register-style[type=checkbox]').each(function () {
								this.checked ? style += $(this).val()+"," : "not checked";
							});

							var tmp = JSON.stringify(user.groups.data);
							$.post('ajax.php', {action : 'register', userID : response.authResponse.userID, groups : tmp, location : location, height : height, style : style, gender : user.gender}).done(function(){
								$('#registerModal').closeModal();
								$('#registerModal').remove();
								getFacebookData();
							})
						})
		  			});
		  		}
		  		else if(res.res == "login") {
		  			getFacebookData();
		  		}
		  	});
		}
	  	function facebookRequest() {
			
	  		FB.getLoginStatus(function(response) {
			  if (response.status === 'connected') {
			    console.log('Logged in.');
			    checkUser(response);	
			  }
			  else {
			    FB.login(function(response) {
			    	if(response.status == "connected") {
			    		checkUser(response);
			    	}
			    }, {
					scope : "user_events,user_groups,user_birthday,user_friends,user_hometown,user_location,email,rsvp_event,read_friendlists,user_likes",
					return_scopes : true
				});
			  }
			});
	  	}

	  	$('#loginButton').click(function(e){
	  		e.preventDefault();
	  		if(loginFlag == 0)
	  			facebookRequest();
	  	});
	})