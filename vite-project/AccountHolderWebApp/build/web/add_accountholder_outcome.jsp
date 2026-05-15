<%-- 
    Document   : add_person_outcome
    Created on : Apr 13, 2026, 8:26:53 AM
    Author     : LonaHans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Account Holder Outcome Page</title>
    </head>
    <body>
        <h1>Add Account Holder Outcome</h1>
        <%
            String fullname = (String)request.getAttribute("fullname");
        %>
        <p>
            <b><%=fullname%></b> has been successfully added to the database.
            <br>Please click <a href="menu.jsp">here</a> to get back to the menu page.
            <br>Please click <a href="index.html">here</a> to get back to the main page.
        </p>
    </body>
</html>
