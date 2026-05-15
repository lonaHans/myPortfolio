<%-- 
    Document   : view_accountholders
    Created on : Apr 13, 2026, 9:18:49 AM
    Author     : LonaHans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Account Holders Page</title>
    </head>
    <body>
        <h1>Get Account Holders</h1>
        <p>
            Please click on the button below.
        </p>
        <form action="GetAccountHoldersServlet.do" method="GET">
            <table>
               
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET ACCOUNT HOLDERS"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
