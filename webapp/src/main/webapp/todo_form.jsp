<!DOCTYPE html>
<html>
<head>
<title>Form to create a new resource</title>
</head>
<body>
	<form action="webresources/todos" method="POST">
		<label for="id">ID</label> <input name="id" /> <br /> <label
			for="summary">Summary</label> <input name="summary" /> <br />
		Description:
		<TEXTAREA NAME="description" COLS=40 ROWS=6></TEXTAREA>
		<br /> <input type="submit" value="Submit" />
	</form>
</body>
</html>
