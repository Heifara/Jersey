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
<script type="text/javascript">
	jQuery(document).ready(function($) {
	});
	function init() {
		jQuery.ajax({
			type : "GET",
			url : "webresources/todos",
			dataType : "xml",
			success : function(aData, aStatus, aXMLHttpRequest) {
				jQuery("#todos").empty();
				$(aData).find("Todo").each(function() {
					var iTodo = new Todo();
					iTodo.parse($(this));
					iTodo.toConsole();
					jQuery("#todos").append(iTodo.todiv());
				});
			},
			error : function(xml) {
			}
		});
	}
	function save() {
		jQuery.ajax({
			type : "POST",
			url : "webresources/todos",
			dataType : "xml",
			data : {
				id : jQuery("#id").val(),
				summary : jQuery("#summary").val(),
				description : jQuery("#description").val(),
			},
			success : function(aData, aStatus, aXMLHttpRequest) {
				console.log(aData);
				$(aData).find("Todo").each(function() {
					var iTodo = new Todo();
					iTodo.parse($(this));
					iTodo.toConsole();
					jQuery("#todos").prepend(iTodo.todiv());
				});
			},
			error : function(xml) {
			}
		});
	}
	function Todo() {
		var summary;
		var description;

		this.parse = function(aTodo) {
			this.summary = $(aTodo).attr("summary")
			this.description = $(aTodo).attr("description")
		}

		this.toConsole = function() {
			console.log("Summary " + this.summary);
			console.log("Description " + this.description);
		}

		this.todiv = function() {
			var iResult = "<div class='todo'>";
			iResult += "<p class='summary'><strong>Summary</strong> " + this.summary + "</p>";
			iResult += "<p class='description'><strong>Description</strong> " + this.description + "</p>";
			iResult += "</div>";
			return iResult;
		}
	}
</script>
</head>
<body onload="init()">
	<jsp:include page="navbar.jsp" />

	<h2>Jersey RESTful Web Application And Bootstrap</h2>

	<div>
		<div>
			ID<input id="id" />
		</div>
		<div>
			Summary<input id="summary" />
		</div>
		<div>
			Description
			<textarea id="description" COLS=40 ROWS=6></textarea>
		</div>
		<div>
			<button onclick="save()">Save</button>
		</div>
	</div>

	<div id="todos"></div>

</body>
</html>
