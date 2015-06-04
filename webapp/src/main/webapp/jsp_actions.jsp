<h1>JSP Actions</h1>
<div class="body-container">
	<h2>Description</h2>
	<p>JSP actions use constructs in XML syntax to control the behavior of the servlet engine. You can dynamically insert a file, reuse JavaBeans components, forward the user to another page, or generate HTML for the Java plugin.</p>

	<h2>Syntaxe</h2>

	<h2>Exemples</h2>
	<div class="body-container example">
		<h3>Exemple 1</h3>
		<h4>Using JavaBeans in JSP</h4>
		<jsp:useBean id="todo" class="com.maohi.software.webapp.jaxb2.Todo">
			<jsp:setProperty name="todo" property="summary" value="My summary" />
			<jsp:setProperty name="todo" property="description" value="My description" />
		</jsp:useBean>
		<p>Got Message...</p>
		<div>
			<div class="summary">
				Summary
				<jsp:getProperty name="todo" property="summary" />
			</div>
			<div class="description">
				Description
				<jsp:getProperty name="todo" property="description" />
			</div>
		</div>
	</div>

	<div class="body-container example-alt">
		<h3>Exemple 2</h3>
		<xmlElement xmlElementAttr="Value for the attribute"> Body for XML element </xmlElement>
	</div>

	<div class="body-container example">
		<h3>Exemple 3</h3>
		<jsp:text>
			Template for data
		</jsp:text>
	</div>
</div>
