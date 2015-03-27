<?php
	if(!isset($_POST)){
		exit();
	}
	$test['gender'] = $_POST['gender'];
	$test['height'] = $_POST['height'];
	$test['style'] = $_POST['style'];
	$test['facebook_id'] = $_POST['user-id'];

	$link = mysqli_connect("localhost", 'root', '', 'facebook') or die("Error " . mysqli_error($link));
	$data = $link->query("SELECT * FROM `user` WHERE `facebook_id` != '".$_POST['user-id']."'");

	$groupData = $link->query("SELECT * FROM `group`, `user` WHERE user.user_id = group.user_id AND user.facebook_id = ".$_POST['user-id']);

	$group = [];
	while ($tempData = $groupData->fetch_assoc()) {
		array_push($group, $tempData);
	}

	//echo "<pre>"; print_r($group); echo "</pre>";
	$result = [];
	while ($temp = $data->fetch_assoc()) {
		$testValue = 0;
		if($temp['gender'] === $test['gender'])
			$testValue++;
		if($temp['height'] === $test['height'])
			$testValue++;
		
		$tempGroup = $link->query("SELECT * FROM `group` WHERE `user_id` = ".$temp['user_id']);
		
		$temp['ingroup'] = [];
		while ($val = $tempGroup->fetch_assoc()) {
			foreach ($group as $key => $value) {
				if($val['group_id'] == $value['group_id'])
					array_push($temp['ingroup'], ["key"=>$value['group_id'], 'value' => $value['group_name']]);
			}	
			//echo "<pre>"; print_r($val); echo "</pre>";
		}
	
		$tempStyle = explode(',', $temp['style']);
		foreach ($tempStyle as $key => $value) {
			if(in_array($value, $test['style']))
				$testValue++;
		}
		$temp['testValue'] = $testValue;
		array_push($result, $temp);
	}
	//print_r($result);
	usort($result, function($a, $b) {
		return $b['testValue'] - $a['testValue'];
	});
?>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Social Web</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<link type="text/css" rel="stylesheet" href="materialize/css/materialize.css"  media="screen,projection"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<script type="text/javascript" src="materialize/js/materialize.min.js"></script>

	<script src="facebookLogic.js"></script>
	<style>
		.hide {
			display: none;
		}
		.register-img {
			margin: 0px auto;
			display: block;
		}
		.nav-wrapper {
		padding-left: 15px;
		}
		#nav-title {
		margin-left: 15px;	
		}
		body {
		display: flex;
		min-height: 100vh;
		flex-direction: column;
		}

		main {
			flex: 1 0 auto;
			padding: 15px;			
		}		
		div#me {
		display: inline-block;
		}
		span#pic {    	
			float: left;
			margin-right: 15px;
		}
		span#name {
			font-weight: bold;
		}
		div#groups {
			width: 45%;
		}
		div#pages {
			width: 45%;	
		}
			.collapsible-header {
				font-weight: bold;
				background-color: #F8F8F8;
				background: -webkit-linear-gradient(#F8F8F8, #ffffff); /* For Safari 5.1 to 6.0 */
				background: -o-linear-gradient(#F8F8F8, #ffffff); /* For Opera 11.1 to 12.0 */
				background: -moz-linear-gradient(#F8F8F8, #ffffff); /* For Firefox 3.6 to 15 */
				background: linear-gradient(#F8F8F8, #ffffff); /* Standard syntax */					
			}
			.collapsible-body {
				padding: 15px;
			}	    	
		#links {
		font-weight: bold;
		}
		.indent {
		padding-left: 15px;
		}
		#wordCloud {
		  width: 100%;
		  min-height: 200px;
		}	
		#loginButton {
			width: 320px;
			height: 70px;
			background-image: url("assets/facebook_login.png");
			border: none;
			margin: 0px auto;
			display: block;
		}	
	</style>

	<!-- // WordCloud -->
	<script src="jqcloud2/dist/jqcloud.min.js"></script>
	<link rel="stylesheet" href="jqcloud2/dist/jqcloud.min.css">	
	<!-- // -->
	</head>
	<body>
		<nav>
			<ul class="left" id="links">
				<li>
				<a href="index.php" id="login">
					<img src="assets/logo.png" alt="" style="height:100%">
				</a>
				</li>
			</ul>
			<ul class="left" id="search-link">
				<li>
				<a href="#!" id="search">
					Find My Partner
				</a>
				</li>
			</ul>
		</nav>	
		<main>

		<pre>
			<?php  		
			?>
		</pre>
		</main>
	    <footer class="page-footer">
			<div class="row indent">
				<div class="col l6 s12">
				<h5 class="white-text">We are social</h5>
				<p class="grey-text text-lighten-4">
					The awesome social dance with me app
				</p>
			</div>
	      </div>
	      <div class="footer-copyright">
			<div class="indent">
				<p class="indent">© 2015 Saskia &amp; Shahnaz</p>
			</div>
	      </div>
	    </footer>
	    <div class="modal" id="searchModal">
	    <form action="search.php" method="POST">
	    	<div class="row">
	    		<div class="col s12">
	    			<h4>Search dance partner</h4>
	    		</div>
	    	</div>
	    	<div class="row">
    			<div class="col s12">
    				<label>Gender</label>
					<p>
						<input name="gender" type="radio" id="genderMale" value="male" />
						<label for="genderMale">Male</label>
					</p>
					<p>
						<input name="gender" type="radio" id="genderFemale" value="female"/>
						<label for="genderFemale">Female</label>
					</p>
    			</div>
    		</div>
 
	    	<div class="row">
	    		<div class="col s12">
	    			<label>Height</label>
					<select id="search-height" name="height">
						<option value="" disabled selected>Choose your option</option>
						<option value="<1.50">under 1.50m</option>
						<option value="1.51-1.60">1.51m-1.60m</option>
						<option value="1.61-1.70">1.61m-1.70m</option>
						<option value="1.71-1.80">1.71m-1.80m</option>
						<option value="1.81-1.90">1.81m-1.90m</option>
						<option value="above">above 1.90m</option>
					</select>
	    		</div>
	    	</div>
	    	<div class="row">
	    		<div class="col s6">
	    			<label>Dance Type</label>
	    		</div>
	    	</div>
	    	<div class="row">
	    		<div class="col s6">
	    			<p>
						<input type="checkbox" id="test10" class="search-style" value="Rumba" name="style[]"/>
						<label for="test10">Rumba</label>
					</p>
					<p>
						<input type="checkbox" id="test16" class="search-style" value="Cha Cha" name="style[]"/>
						<label for="test16">Cha Cha</label>
					</p>
	    		</div>
	    		<div class="col s6">
	    			<p>
						<input type="checkbox" id="test39" class="search-style" value="Jive" name="style[]"/>
						<label for="test39">Jive</label>
					</p>
					<p>
						<input type="checkbox" id="test26" class="search-style" value="Waltz" name="style[]"/>
						<label for="test26">Waltz</label>
					</p>
	    		</div>
	    	</div>
	    	<div class="row">
    			<button class="btn waves-effect waves-light col s12" type="submit" action="submit" id="searchButton">Search
					<i class="mdi-action-search right"></i>
				</button>
	    	</div>
	    	<div class="row">
    			<button id="loginButton" class="center-align"></button>
				
	    	</div>
	    	
	    </form>
	    </div>
	    <script>
	    	// Define global App settings
		window.fbAsyncInit = function() {
	    	FB.init({
		      appId      : '416168255230551', // <----------- change this to your api key
		      xfbml      : true,
		      version    : 'v2.1'
	    	});
	    	var list = <?php echo(json_encode($result)); ?>;
			
			$(function(){
				
				FB.login(function(response) {
					if(response.status == "connected") {
						$('main').append('<div class="row result">');
						//console.log(list);
						FB.api('/me/groups', function(response){
							$.each(response.data, function(key,value){
								FB.api('/'+value.id+'/members', function(data){	
									$.each(data.data, function(user, userData){
										//console.log(userData.id);
										$.each(list, function(keyLoop, loop){
											if(typeof list[keyLoop].group == "undefined")
												list[keyLoop].group = []

											//console.log(loop.facebook_id);
											//console.log(loop.facebook_id+" "+userData.id);
											if(loop.facebook_id == userData.id) {
												list[keyLoop].group.push(value.name);
												//console.log("matcj "+userData.name+' '+value.name);
												//console.log(list[keyLoop].group);
											}
										});
										//var loop = null;
									})
								})
							})
							$.each(list, function(key,value){
								//onsole.log(value.facebook_id);
								if(value.facebook_id.length == 0)
									var constructor = "error";
								else
									var constructor = '/'+value.facebook_id+'/picture';
								if(constructor != "error") {
									//console.log(value.facebook_id);
									FB.api(constructor, {type : "square"}, function(response) {
										console.log(value);
										var card ='<div class="col s3"><div class="card"><div class="card-image"><img src="https://graph.facebook.com/'+value.facebook_id+'/picture?type=square"></div><div class="card-content">'+value.gender+'<br/>'+value.style+'</br>Matching value '+value.testValue+'<br/>'
										if(value.group.length > 0) {
											card += "Mutual Group: <br>"
											$.each(value.ingroup, function(groupKey, groupData){
												card += '<a href="http://facebook.com/group/'+groupData.key+'">';
												card += groupData.value+"<br>";
											});
										}
										card +='<center><a href="http://www.facebook.com/'+value.facebook_id+'"><img src="assets/getincontact.png" height="50" width="50"/></a></center></div></div><div class="col s3"></div>';
										$('.result').append(card);
									})
								}
							});
							$('main').append('</div>');		
						})
					}
				}, {
					scope : "user_events,user_groups,user_birthday,user_friends,user_hometown,user_location,email,rsvp_event,read_friendlists,user_likes",
					return_scopes : true
				});
			})
	  	};

		(function(d, s, id){
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {return;}
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	    </script>
	</body>
</html>
