/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.LoginBean;
import bean.StaffBean;
import dao.LoginDao;
import dao.RegisterDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String password = request.getParameter("password");
        String cpassword = request.getParameter("cpassword");
        
        if (password != null && cpassword != null &&
                password.equals(cpassword)) {
            int staffId = Integer.parseInt(request.getParameter("staffId"));
            String fullname = request.getParameter("fullname");
            String position = request.getParameter("position");
            int phone = Integer.parseInt(request.getParameter("phone"));
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String username = request.getParameter("username");

            StaffBean registerBean = new StaffBean(staffId, fullname, position, phone, address, email, password, username, cpassword);

            if (RegisterDao.registerUser(registerBean)) {
                request.getRequestDispatcher("/login.jsp").forward(request, response);
                return;
            }
            else {
                request.setAttribute("errMessage", "Insert unsuccessful!");
            }
        }
        else {
                request.setAttribute("errMessage", "The passwords are not the same!");
        }
        
        request.getRequestDispatcher("/registration.jsp").forward(request, response);
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    }
