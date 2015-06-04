<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="1ère essaie de Bootstrap avec Jsp" />
<meta name="author" content="Heifara MATAPO" />
<link rel="icon" href="images/app.ico" />
<title>Jersey with Bootstrap</title>
<jsp:include page="bootstrap.jsp" />
<jsp:include page="scripts.jsp" />
<link rel="stylesheet" href="css/article.css" />
</head>
<body onresize="detectmob();">
	<jsp:include page="navbar.jsp" />

	<h1>Actualité</h1>

	<div class="body-container">

		<div class="article">

			<h2>Un example d'article</h2>
			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
			<a href="">Voir l'article -></a>
			<div class="preview">
				<img alt="" src="http://www.egaliteetreconciliation.fr/local/cache-vignettes/L210xH316/arton32871-75cd2.jpg">
				<video preload="metadata" controls autoplay>
					<source src="http://html5demos.com/assets/dizzy.mp4" type="video/mp4">
					<source src="http://html5demos.com/assets/dizzy.webm" type="video/webm">
					<source src="http://html5demos.com/assets/dizzy.ogv" type="video/ogg">
				</video>
			</div>
			<div class="meta-datas">
				<span class="glyphicon glyphicon-comment"></span> <span class="datas">3 commentaires</span> <span class="glyphicon glyphicon-thumbs-up"></span> <span class="datas">4 likes</span>
			</div>
		</div>

		<div class="article">

			<h2>Un example d'article</h2>
			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
			<a href="">Voir l'article -></a>
			<div class="meta-datas">
				<span class="glyphicon glyphicon-comment"></span> <span class="datas">3 commentaires</span> <span class="glyphicon glyphicon-thumbs-up"></span> <span class="datas">4 likes</span>
			</div>
		</div>

		<div class="article">

			<h2>Un example d'article</h2>
			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
			<a href="">Voir l'article -></a>
			<div class="meta-datas">
				<span class="glyphicon glyphicon-comment"></span> <span class="datas">3 commentaires</span> <span class="glyphicon glyphicon-thumbs-up"></span> <span class="datas">4 likes</span>
			</div>
		</div>


	</div>
	<div class="sidebar">
		<div class="form-group">
			<input type="text" class="form-control search" placeholder="Search">
		</div>
		<h2>Nuage de tags</h2>
		<div id="tagsphere-holder1" class="tagsphere-holder">
			<ul class="tagsphere">
				<li><a href="">News</a></li>
				<li><a href="">Actualité</a></li>
				<li><a href="">Sport</a></li>
				<li><a href="">Cuisine</a></li>
				<li><a href="">Sexe</a></li>
				<li><a href="">Pornhub</a></li>
				<li><a href="">Micronix</a></li>
				<li><a href="">Test</a></li>
			</ul>
		</div>
		<script>
			var ts_style = {
				border : true,
				mousespeed : 1.3,
				size : 240,
				smallestsize : 40,
				biggestsize : 45,
				clicktostart : true
			};
			var ts = $tagsphere("tagsphere-holder1", ts_style);
			jQuery("#clicktostart").click();
		</script>
	</div>
</body>
</html>
