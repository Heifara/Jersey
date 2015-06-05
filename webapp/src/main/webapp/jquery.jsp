<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="author" content="Heifara MATAPO" />
<link rel="icon" href="images/app.ico" />
<title>JQuery with JSP</title>
<jsp:include page="common-head.jsp" />
<script type="text/javascript">
	$(document).ready(function($) {
		'use strict';
		$(".toggle").click(function() {
			if ($(this).text() == "Hide") {
				$(this).text('Show');
				$(this).children(".item").show();
			} else {
				$(this).text('Hide');
				$(this).children(".item").hide();
			}
		});
		$(".btn-remove").click(function() {
			$("#div1").remove();
		});
		$(".btn-empty").click(function() {
			$("#empty").empty();
		});
	});
	function toggle() {
		'use strict';
		$("p").toggle();
	};
	function append() {
		'use strict';
		$("#append").append("Hello World");
	}
	function prepend() {
		'use strict';
		$("#prepend").prepend("Hello World");
	}
	function load() {
		'use strict';
		$("#load").load("text.txt", function() {
			alert("Good");
		})
	}
	function get(aURL) {
		$.get(aURL, function(aData, aStatus) {
			$("#get").append(aData);
		});
	}
	function post(aURL) {
		$.post(aURL, {
			id : "1"
		}, function(aData, aStatus) {
			$("#post").append(aData);
		});
	}
</script>
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<div>
		<h1>Ajax is FUN!!</h1>
		<h2>Load</h2>
		<button onclick="load()">Click to show content of text.txt</button>
		<div id="load"></div>
		<h2>Get</h2>
		<button onclick="get('webresources/todos/count')">Show todos/count</button>
		<div id="get"></div>
		<h2>Post</h2>
		<button onclick="post('webresources/todos')">Show todos/count</button>
		<div id="post"></div>
	</div>

	<div>
		<h1>This is a title h1</h1>
		<button class="toggle" onclick="toggle()">Show</button>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>

	<div>
		<h1>Append HTML</h1>
		<button onclick="append()">Adding Hello World after My Division</button>
		<div id="append">My Division</div>
	</div>

	<div>
		<h1>Prepend HTML</h1>
		<button onclick="prepend()">Adding Hello World before My Division</button>
		<div id="prepend">My Division</div>
	</div>

	<div>
		<h1>Remove My Division</h1>
		<button class="btn-remove">Remove</button>
		<div id="div1" style="width: 25%; border: 1px solid black; background-color: yellow;">
			My Division
			<div>
				<p>This is a paragraph</p>
				<p>This is an other paragraph</p>
			</div>
		</div>
	</div>

	<div>
		<h1>Empty My Division</h1>
		<button class="btn-empty">Empty</button>
		<div id="empty" style="width: 25%; border: 1px solid black; background-color: yellow;">
			<h3>My Division</h3>
			<p>This is a paragraph</p>
			<p>This is an other paragraph</p>
		</div>
	</div>

</body>
</html>