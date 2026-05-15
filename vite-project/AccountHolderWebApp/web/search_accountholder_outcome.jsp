<%-- 
    Document   : search_accountholder_outcome
    Created on : Apr 13, 2026, 9:08:16 AM
    Author     : LonaHans
--%>

<%@page import="za.ac.tut.entities.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Account Holder Outcome Page</title>
    </head>
    <body>
        <h1>Search Account Holder Outcome</h1>
        <%
            AccountHolder holder = (AccountHolder)request.getAttribute("holder");
        %>
        <p>
            Below are the details of the account holder.
        </p>
        <table>
            <tr>
                <td>ID:</td>
                <td><%=holder.getId()%></td>
            </tr>
             <tr>
                <td>Full Name:</td>
                <td><%=holder.getFullName()%></td>
            </tr>
             <tr>
                <td>Street:</td>
                <td><%=holder.getStreet()%></td>
            </tr>
             <tr>
                <td>City:</td>
                <td><%=holder.getCity()%></td>
            </tr>
             <tr>
                <td>Code:</td>
                <td><%=holder.getCode()%></td>
            </tr>
             <tr>
                <td>Cell number:</td>
                <td><%=holder.getCellNo()%></td>
            </tr>
             <tr>
                <td>Email Address:</td>
                <td><%=holder.getEmailAddress()%></td>
            </tr>
           <p>
            
            <br>Please click <a href="menu.jsp">here</a> to get back to the menu page.
            <br>Please click <a href="index.html">here</a> to get back to the main page.
        </p>
        </table>
    </body>
</html>
