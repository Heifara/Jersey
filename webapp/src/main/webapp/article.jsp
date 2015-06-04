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
<link rel="stylesheet" href="css/article.css" />
</head>
<body>
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
				<span class="glyphicon glyphicon-comment"></span>
				<span class="datas">3 commentaires</span>
				<span class="glyphicon glyphicon-thumbs-up"></span>
				<span class="datas">4 likes</span>
			</div>
		</div>
		
		<div class="article">
			
			<h2>Un example d'article</h2>
			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
			<a href="">Voir l'article -></a>
			<div class="meta-datas">
				<span class="glyphicon glyphicon-comment"></span>
				<span class="datas">3 commentaires</span>
				<span class="glyphicon glyphicon-thumbs-up"></span>
				<span class="datas">4 likes</span>
			</div>
		</div>
		
		<div class="article">
			
			<h2>Un example d'article</h2>
			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
			<a href="">Voir l'article -></a>
			<div class="meta-datas">
				<span class="glyphicon glyphicon-comment"></span>
				<span class="datas">3 commentaires</span>
				<span class="glyphicon glyphicon-thumbs-up"></span>
				<span class="datas">4 likes</span>
			</div>
		</div>
		
		
	</div>

	<jsp:include page="scripts.jsp" />
</body>
</html>
