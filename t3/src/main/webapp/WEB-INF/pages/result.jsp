<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Registration Info</title>
</head>
<body>

<h2>Registration Information</h2>
    <table>
        <tr>
            <td>Email</td>
            <td>${forma.email}</td>
        </tr>
        <tr>
        <tr>
            <td>Name</td>
            <td>${forma.name}</td>
        </tr>
        <tr>
            <td>Web</td>
            <td>${forma.web}</td>
        </tr>
        <tr>
            <td>City</td>
            <td>${forma.city}</td>
        </tr>
    </table>
</body>
</html>
