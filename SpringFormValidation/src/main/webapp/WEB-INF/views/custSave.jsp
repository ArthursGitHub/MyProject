<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="p"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Save Page</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
    <body>

        <p:form method="POST" commandName="customer" action="savedo">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><p:input path="name"/></td>
                    <td><p:errors path="name" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><p:input path="email"/></td>
                    <td><p:errors path="email" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><p:input path="age"/></td>
                    <td><p:errors path="age" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><p:select path="gender">
                        <p:option value="" label="Select Gender"/>
                        <p:option value="MALE" label="Male"/>
                        <p:option value="FEMALE" label="Female"/>
                    </p:select></td>
                    <td><p:errors path="gender" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Birthday:</td>
                    <td><p:input path="birthday" placeholder="MM/dd/yyyy"/></td>
                    <td><p:errors path="birthday" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><p:input path="phone"/></td>
                    <td><p:errors path="phone" cssClass="error"/></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="submit" value="Save Customer"></td>
                </tr>
            </table>

        </p:form>

    </body>
</html>
