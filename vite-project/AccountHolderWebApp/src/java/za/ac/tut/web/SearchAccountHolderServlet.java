/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.AccountHolder;
import za.ac.tut.model.bl.AccountHolderFacadeLocal;

/**
 *
 * @author LonaHans
 */
public class SearchAccountHolderServlet extends HttpServlet {
@EJB
private AccountHolderFacadeLocal afl;
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        AccountHolder holder = afl.find(id);
        request.setAttribute("holder", holder);
        
        RequestDispatcher disp =request.getRequestDispatcher("search_accountholder_outcome.jsp");
        disp.forward(request, response);
    }

    
}

    