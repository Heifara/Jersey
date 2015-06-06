<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="1ère essaie de Bootstrap avec Jsp" />
<meta name="author" content="Heifara MATAPO" />
<link rel="icon" href="images/app.ico" />
<title>Angular JS</title>
<jsp:include page="common-head.jsp" />
<script>
	var app = angular.module('app', []);
    app.controller('controller', function($scope) {
	    $scope.firstName = "John";
	    $scope.lastName = "Doe";
	    $scope.fullName = function() {
		    return $scope.firstName + " " + $scope.lastName;
	    }
    });
    app.controller('countController', function($scope) {
	    $scope.count = 0;
    });
    app.controller('myCtrl', function($scope) {
    });
    app.controller('customersCtrl', function($scope, $http) {
	    $http.get("http://www.w3schools.com/angular/customers.php").success(function(response) {
		    $scope.names = response.records;
	    });
    });
</script>
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 5px;
}

table tr:nth-child(odd) {
	background-color: #f1f1f1;
}

table tr:nth-child(even) {
	background-color: #ffffff;
}
</style>
</head>
<body ng-app="app">
	<jsp:include page="navbar.jsp" />

	<div class="body-container" ng-controller="customersCtrl">
		<h1>Lecture d'une resource</h1>
		<hr>
		<ul>
			<li ng-repeat="x in names">{{ x.Name + ', ' + x.Country }}</li>
		</ul>
	</div>

	<div class="body-container" ng-controller="customersCtrl">
		<h1>Table</h1>
		<hr>
		<table>
			<tr ng-repeat="x in names | orderBy: 'Country'">
				<td>{{ $index + 1 }}</td>
				<td>{{ x.Name }}</td>
				<td>{{ x.Country | uppercase }}</td>
			</tr>
		</table>
	</div>

	<div class="body-container" ng-controller="customersCtrl">
		<h1>Table</h1>
		<hr>
		<table>
			<tr ng-repeat="x in names">
				<td ng-if="$odd" style="background-color: lime;">{{ x.Name }}</td>
				<td ng-if="$even">{{ x.Name }}</td>
				<td ng-if="$odd" style="background-color: fuchsia;">{{ x.Country }}</td>
				<td ng-if="$even">{{ x.Country }}</td>
			</tr>
		</table>
	</div>

	<div class="body-container" ng-controller="controller">
		<h1>Application</h1>
		<hr>
		First Name: <input type="text" ng-model="firstName">
		<br>
		Last Name: <input type="text" ng-model="lastName">
		<br>
		<br>
		Full Name: {{firstName}} {{lastName | uppercase}}
		<br>
		Full Name: {{fullName()}}

		<h1>Expressions</h1>
		<hr>
		<p>5+5={{5+5 }}</p>

		<h1>Numbers</h1>
		<hr>
		<p ng-init="quantity=1;cost=5">Total in dollar: {{ (quantity * cost) | currency }}</p>

		<h1>Strings</h1>
		<hr>
		<p>The name is {{ firstName + " " + lastName }}</p>

		<h1>Objects</h1>
		<hr>
		<p ng-init="person={firstName:'John',lastName:'Doe'}">The name is {{ person.lastName }}</p>

		<h1>Arrays</h1>
		<hr>
		<p ng-init="points=[1,15,19,2,40]">The third result is {{ points[2] }}</p>

		<h1>Repeating HTML Elements</h1>
		<hr>
		<div ng-init="names=['Jani','Hege','Kai']">
			<ul>
				<li ng-repeat="x in names">{{ x }}</li>
			</ul>
		</div>
		<div ng-init="names=[{name:'Jani',country:'Norway'},{name:'Hege',country:'Sweden'},{name:'Kai',country:'Denmark'}]">
			<ul>
				<li ng-repeat="x in names | orderBy:'country'">{{ x.name + ', ' + x.country }}</li>
			</ul>
		</div>

		<h1>Filtering Input</h1>
		<hr>
		<div>
			<p><input type="text" ng-model="test"></p>
			<ul>
				<li ng-repeat="x in names | filter:test | orderBy:'country'">{{ (x.name | uppercase) + ', ' + x.country }}</li>
			</ul>
		</div>

		<h1>Filtering Input</h1>
		<hr>
		<div>
			<p><input type="text" ng-model="test"></p>
			<ul>
				<li ng-repeat="x in names | filter:test | orderBy:'country'">{{ (x.name | uppercase) + ', ' + x.country }}</li>
			</ul>
		</div>

		<h1>Enable/Disable</h1>
		<hr>
		<div>
			<p>
				<button ng-disabled="mySwitch">Click Me!</button>
			</p>

			<p><input type="checkbox" ng-model="mySwitch">Button</p>
		</div>

		<h1>Show/Hide</h1>
		<hr>
		<div>
			<h2>Show</h2>
			<p ng-show="true">I am visible.</p>
			<p ng-show="false">I am not visible.</p>

			<h2>Hide</h2>
			<p ng-hide="true">I am not visible.</p>
			<p ng-hide="false">I am visible.</p>
		</div>

	</div>

	<div class="body-container" ng-controller="countController">
		<h1>ng-click</h1>
		<hr>
		<button ng-click="count = count + 1">Click me!</button>
		<p>Compteur:{{count}}</p>
	</div>

</body>
</html>