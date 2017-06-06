<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
  <title>Developer</title>
</head>
<body>

<h2>Enter developer information</h2>
<form:form method="post" action="addDeveloper">
  <table>
    <tr>
      <%-- Здесь предполагается, что мы работаем с атрибутом command --%>
      <%--<td><form:label path="id">Id</form:label></td>--%>
      <td><label for="id">Id</label></td>
      <%--<td><form:input path="id" /></td>--%>
      <td><input id="id" name="id" type="text" value=${command.name}></td>
    </tr>

  </table>
</form:form>
</body>
</html>