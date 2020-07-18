<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update existing record</title>
</head>
<body>
<form action="/records/update" method="post">
    <table>
        <tr>
            <td>
                <label for="firstname">First Name: </label>
            </td>
            <td>
                <input type="text" id="firstname" name="firstname" value="<%=request.getParameter("firstName")%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="lastname">Last Name: </label>
            </td>
            <td>
                <input type="text" id="lastname" name="lastname" value="<%=request.getParameter("lastName")%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="address">Address: </label>
            </td>
            <td>
                <input type="text" id="address" name="address" value="New Address">
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="Update"></td>
            <td><input type="reset" value="Clear"></td>
    </table>

</form>
</body>
</html>
