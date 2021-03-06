<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>

<body>
	<h2>Customer SignUp Form - JSR303 @Valid example</h2>

	<form:form method="POST" commandName="customer" action="signup">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>
			<tr>
				<td>Customer Name :</td>
				<td><form:input path="name" /></td>
				<td><form:errors path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Customer Age :</td>
				<td><form:input path="age" /></td>
				<td><form:errors path="age" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>
<%--
<html>
<head>
	<style>
		.error {
			color: #ff0000;
		}

		.errorblock {
			color: #000;
			background-color: #ffEEEE;
			border: 3px solid #ff0000;
			padding: 8px;
			margin: 16px;
		}
	</style>
</head>

<body>
<h2>Customer SignUp Form - JSR303 @Valid example</h2>

<form id="customer" action="customer/signup" method="POST">

	<table>
		<tr>
			<td>Customer Name :</td>
			<td><input id="name" name="name" type="text" value=""/></td>
			<td></td>
		</tr>
		<tr>
			<td>Customer Age :</td>
			<td><input id="age" name="age" type="text" value="0"/></td>
			<td></td>
		</tr>
		<tr>
			<td colspan="3"><input type="submit" /></td>
		</tr>
	</table>

</form>

</body>
</html>
--%>
