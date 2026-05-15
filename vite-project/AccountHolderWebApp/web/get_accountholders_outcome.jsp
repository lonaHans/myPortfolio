<%-- 
    Document   : get_accountholders_outcome
    Created on : Apr 13, 2026, 9:27:33 AM
    Author     : LonaHans
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Account Holders Outcome Page</title>
    </head>
    <body>
        <h1>Get Account Holders Outcome</h1>
        <%
            List<AccountHolder> list = (List<AccountHolder>)request.getAttribute("holders");
            
        %>
        <p>
            Below are the account holders retrieved from the database
        </p>
        <table>
            <%
                for(int i=0;i<list.size();i++){
                    AccountHolder h = list.get(i);
                    Long id = h.getId();
                    String fullname = h.getFullName();
                    String street = h.getStreet();
                    String city = h.getCity();
                    String code = h.getCode();
                    String cellNo = h.getCellNo();
                    String emailAddress = h.getEmailAddress();
                
            %>
            <tr>
                <td>ID: </td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>Full Name: </td>
                <td><%=fullname%></td>
            </tr>
            <tr>
                <td>Street: </td>
                <td><%=street%></td>
            </tr>
            <tr>
                <td>City: </td>
                <td><%=city%></td>
            </tr>
            <tr>
                <td>Code: </td>
                <td><%=code%></td>
            </tr>
            <tr>
                <td>Cell number: </td>
                <td><%=cellNo%></td>
            </tr>
            <tr>
                <td>Email Address: </td>
                <td><%=emailAddress%></td>
            </tr>
            <%
                }
            %>
        </table>
        <p>
            Please click <a href="menu.jsp">here</a> to get back to the menu page.
            <br>Please click <a href="index.html">here</a> to get back to the main page.
        </p>
    </body>
</html>
