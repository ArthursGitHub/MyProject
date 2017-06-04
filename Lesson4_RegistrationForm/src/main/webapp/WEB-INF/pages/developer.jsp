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
      <td><input id="id" name="id" type="text" value=${command.id}></td>
    </tr>
    <tr>
      <td><form:label path="name">Name</form:label></td>
      <td><form:input path="name" /></td>
    </tr>
    <tr>
      <td><form:label path="specialty">Specialty</form:label></td>
      <td><form:input path="specialty" /></td>
    </tr>
    <tr>
      <td><form:label path="experience">experience</form:label></td>
      <td><form:input path="experience" /></td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="Submit"/>
      </td>
    </tr>
  </table>
</form:form>
</body>
</html>