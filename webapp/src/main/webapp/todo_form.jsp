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
<jsp:include page="common-head.jsp" />
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<h2>Jersey RESTful Web Application And Bootstrap</h2>

	<form action="webresources/todos" method="POST">
		<label for="id">ID</label> <input name="id" /> <br /> <label for="summary">Summary</label> <input name="summary" /> <br /> Description:
		<TEXTAREA NAME="description" COLS=40 ROWS=6></TEXTAREA>
		<br /> <input type="submit" value="Submit" />
	</form>

</body>
</html>
