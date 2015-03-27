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
	<link rel="stylesheet" href="fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
	<script type="text/javascript" src="fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>	
	<script>
		$(document).ready(function(){
			$(".fancyMap").fancybox();
		});
	</script>	

	</head>
	<body>
		<nav>
			<ul class="right" class="links">
				<li>
				<a href="#!" id="login">
					<img src="assets/logo.png" alt="" style="height:100%">
				</a>
				</li>
			</ul>
			<menuItems class="hide">
				<ul class="left" class="links">
					<li>
						<a href="profile.php">
							Profile
						</a>
					</li>
				</ul>
				<ul class="left" id="search-link">
					<li>
						<a href="#" id="search" class="links">
							Find Dance Partner
						</a>
					</li>
				</ul>
				<ul class="left" class="links">
					<li>
						<a id="findMapLink" href="map.php" class="fancyMap" data-fancybox-type="iframe">
							Find Dance Studio
						</a>
					</li>
				</ul>
				<ul class="left" class="links">
					<li>
						<a href="help.php">
							Help
						</a>
					</li>
				</ul>
			</menuItems>
		</nav>	
		<main>	
			<div id="loginContainer">
				<button id="loginButton" class="center-align"></button>
			</div>
			<!-- <button id="login">Login</button> is now hidden -->
			<div id="data">
				<div class="row">
					<div id="me">
						<span id="pic"></span>
						<span id="name"></span><br />
						<span id="dob"></span><br />
						<span id="gender"></span><br />
						<span id="friends"></span>
					</div>		
				</div>
				<div class="row hide">
					<div id="groups" class="col s6 left">
						<h5>Group memberships</h5>
						<ul class="collapsible" data-collapsible="accordion"></ul>
					</div>
					<div id="pages" class="col s6 right">
						<h5>Page likes</h5>
						<ul class="collapsible" data-collapsible="accordion"></ul>
					</div>			
				</div>
			</div>
			<div class="row">
				<div id="wordCloud">&nbsp;</div>
			</div>
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
				<p class="indent">© 2015 Saskia &amp; Shahanaz</p>
			</div>
	      </div>
	    </footer>
	    <div class="modal" id="registerModal">
	    	<div class="row">
    			<h4 class="col s12 center-align">Hello, </h4>
    		</div>	
    		<div class="row">
    			<div class="col s12">
    				<img class="responsive-img register-img" src="#">
    			</div>
    		</div>
	    	<div class="row">
	    		<div class="col s12">
	    			<label>Height</label>
					<select id="register-height">
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
						<input type="checkbox" id="test5" class="register-style" value="Rumba"/>
						<label for="test5">Rumba</label>
					</p>
					<p>
						<input type="checkbox" id="test6" class="register-style" value="Cha Cha"/>
						<label for="test6">Cha Cha</label>
					</p>
	    		</div>
	    		<div class="col s6">
	    			<p>
						<input type="checkbox" id="test9" class="register-style" value="Jive"/>
						<label for="test9">Jive</label>
					</p>
					<p>
						<input type="checkbox" id="test7" class="register-style" value="Waltz"/>
						<label for="test7">Waltz</label>
					</p>
	    		</div>
	    	</div>
	    	<div class="row">
    			<button class="btn waves-effect waves-light col s12" type="submit" name="action" id="registerButton">Register
					<i class="mdi-content-send right"></i>
				</button>
	    	</div>
	    </div>
	    <div class="modal" id="searchModal">
	    <form action="search.php" method="POST">
			<input type="hidden" name="user-id" value="" id='user-id'>
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
	    </form>
	    </div>
	</body>
</html>
