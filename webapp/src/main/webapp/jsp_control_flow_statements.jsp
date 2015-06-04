<h1>Control-Flow Statements</h1>
<div>
	<h2>Description</h2>
	<p>JSP provides full power of Java to be embedded in your web application. You can use all the APIs and building blocks of Java in your JSP programming including decision making statements, loops etc.</p>

	<%!int day = 3;%>
	<div>
		<h3>if...else</h3>
		<div>
			<%
				if (day == 1 | day == 7) {
			%>

			<p>Today is weekend</p>
			<%
				} else {
			%>
			<p>Today is not weekend</p>
			<%
				}
			%>
		</div>
	</div>
	<div>
		<h3>switch...case</h3>
		<div>
			<%
				switch (day) {
				case 0:
					out.println("It\'s Sunday.");
					break;
				case 1:
					out.println("It\'s Monday.");
					break;
				case 2:
					out.println("It\'s Tuesday.");
					break;
				case 3:
					out.println("It\'s Wednesday.");
					break;
				case 4:
					out.println("It\'s Thursday.");
					break;
				case 5:
					out.println("It\'s Friday.");
					break;
				default:
					out.println("It's Saturday.");
				}
			%>
		</div>
	</div>
	<div>
		<h3>Loop Statements</h3>
		<div>
			<%
				int fontSize;
				for (fontSize = 1; fontSize <= 3; fontSize++) {
			%>
			<font color="green" size="<%=fontSize%>"> JSP Tutorial </font><br />
			<%
				}
			%>
		</div>
		<div>
			<%
				fontSize = 0;
				while (fontSize <= 3) {
			%>
			<font color="green" size="<%=fontSize%>"> JSP Tutorial </font><br />
			<%
				fontSize++;
			%>
			<%
				}
			%>
		</div>
	</div>
</div>