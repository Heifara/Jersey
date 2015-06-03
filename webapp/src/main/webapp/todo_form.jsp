<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="1ère essaie de Bootstrap avec Jsp" />
<meta name="author" content="Heifara MATAPO" />
<link rel="icon" href="images/app.ico" />
<title>Form to create a new resource</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.css" />
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">Home</a>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		</div>
		<div class="container">
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="webresources/todo"> Jersey resource</a></li>
					<li><a href="todo_form.jsp">Formulaire Todo</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://jersey.java.net">Jersey</a></li>
					<li><a href="http://getbootstrap.com/">Bootstrap</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<form action="webresources/todos" method="POST">
		<label for="id">ID</label> <input name="id" /> <br /> <label for="summary">Summary</label> <input name="summary" /> <br /> Description:
		<TEXTAREA NAME="description" COLS=40 ROWS=6></TEXTAREA>
		<br /> <input type="submit" value="Submit" />
	</form>
</body>
</html>
