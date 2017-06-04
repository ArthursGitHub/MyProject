<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<html>
<head>
    <title>Success Page</title>
</head>
<body>
    User Details
    <hr>

    User Name : ${attributeName_user6.name} <br/>
    Gender : ${attributeName_user6.gender} <br/>
    Country : ${attributeName_user6.country} <br/>
    About You : ${attributeName_user6.aboutYou} <br/>
    Community : ${attributeName_user6.community[0]} ${attributeName_user6.community[1]} ${attributeName_user6.community[2]}<br/>
    Mailing List: ${attributeName_user6.mailingList}
</body>
</html>
