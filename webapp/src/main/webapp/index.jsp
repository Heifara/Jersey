<%@page import="java.util.Date"%>
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
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<h2>Jersey RESTful Web Application And Bootstrap</h2>
	<div>
		<h3>Session</h3>
		<div>
			<strong>Session id</strong>
			<%=session.getId()%>
		</div>
		<div>
			<strong>Creation time</strong>
			<%=new Date(session.getCreationTime()).toLocaleString()%>
		</div>
		<div>
			<strong>Last accessed time</strong>
			<%=new Date(session.getLastAccessedTime()).toLocaleString()%>
		</div>
	</div>
	<div>
		<h3>Request</h3>
		<div>
			<strong>Path Info</strong>
			<%=request.getPathInfo()%>
		</div>
		<div>
			<strong>Local Name</strong>
			<%=request.getLocalName()%>
		</div>
		<div>
			<strong>Auth Type</strong>
			<%=request.getAuthType()%>
		</div>
	</div>
</body>
</html>
