<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new Record</title>
</head>
<body>
<%@include file="header.html"%>
<p> Something went wrong! Please try again!</p>

<form action="/records/create" method="post">
    <table>
        <tr>
            <td>
                <label for="firstName">First Name: </label>
            </td>
            <td>
                <input type="text" id="firstName" name="firstName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastName">Last Name: </label>
            </td>
            <td>
                <input type="text" id="lastName" name="lastName">
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <input type="text" id="address" name="address">
            </td>
        </tr>
        <tr><br>
            <td><input type="submit" value="Create"></td>
            <td><input type="reset" value="Clear"></td>
        </tr>
    </table>

</form>
</body>
</html>
