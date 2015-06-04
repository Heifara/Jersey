<h1>JSP Expression</h1>
<div class="body-container">
	<h2>Description</h2>
	<p>A JSP expression element contains a scripting language expression that is evaluated, converted to a String, and inserted where the expression appears in the JSP file. Because the value of an expression is converted to a String, you can use an expression within a line of text, whether or not it is tagged with HTML, in a JSP file. The expression element can contain any expression that is valid according to the Java Language Specification but you cannot use a semicolon to end an expression.</p>

	<h2>Syntaxe</h2>
	<p>jsp:expression</p>

	<h2>Exemple</h2>
	<p>
		Today's date:
		<%=(new java.util.Date()).toLocaleString()%>
	</p>
</div>