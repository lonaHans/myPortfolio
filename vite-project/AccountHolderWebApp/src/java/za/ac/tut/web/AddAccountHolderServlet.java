/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class AddAccountHolderServlet extends HttpServlet {
@EJB
private AccountHolderFacadeLocal afl;
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String fullname = request.getParameter("fullname");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String code = request.getParameter("code");
        String cellNo = request.getParameter("cellNo");
        String emailAddress = request.getParameter("emailAddress");
        
        AccountHolder holder = createAccount(id, fullname, street, city, code, cellNo, emailAddress);
        afl.create(holder);
        request.setAttribute("fullname", fullname);
        
        RequestDispatcher disp =request.getRequestDispatcher("add_accountholder_outcome.jsp");
        disp.forward(request, response);
    }
    private AccountHolder createAccount(Long id,String fullname,String street,String city,String code,String cellNo,String emailAddress ){
        AccountHolder holder = new AccountHolder();
        holder.setId(id);
        holder.setFullName(fullname);
        holder.setStreet(street);
        holder.setCity(city);
        holder.setCode(code);
        holder.setCellNo(cellNo);
        holder.setEmailAddress(emailAddress);
        holder.setCreationDate(new Date());
        
        return holder;
        
    }
}

   
    
