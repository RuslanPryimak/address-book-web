<%@ page import="com.softserve.itacademy.AddressBook" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read All Address Book records</title>
</head>
<body>
<%@include file="header.html"%>
<br>
<p>Sort by: <a methods="get" href="/records/sortBy?sort=asc">ascending</a> | <a methods="get" href="/records/sortBy?sort=desc">descending</a></p>
<br>
<table border="1">
    <tr>
        <th>No.</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address</th>
        <th colspan="3">Operations</th>
    </tr>
    <%
        AddressBook addressBook=AddressBook.getInstance();
        int number=0;
        Iterator<String> iterator=addressBook.iterator();
        String firstName = null;
        String lastName = null;
        String address = null;
        while(iterator.hasNext()) {
            Pattern pattern = Pattern.compile("^First name: (.+), Last name: (.+), Address: (.+)$");
            Matcher m = pattern.matcher(iterator.next());
            if (m.matches() && m.groupCount() == 3) {
                firstName = m.group(1);
                lastName = m.group(2);
                address = m.group(3);
            }%>
    <td><%=++number%></td>
    <td><%=firstName%></td>
    <td><%=lastName%></td>
    <td><%=address%></td>
    <td>
        <a href="/records/read?firstName=<%=firstName%>&lastName=<%=lastName%>">Read</a>
    </td>
    <td>
        <a href="/records/update?firstName=<%=firstName%>&lastName=<%=lastName%>&address=<%=address%>">Update</a>
    </td>
    <td>
        <a href="/records/delete?firstName=<%=firstName%>&lastName=<%=lastName%>">Delete</a>
    </td>
    </tr>
    <%
        }%>
</table>
</body>
</html>
