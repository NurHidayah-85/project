/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.RegInformationBean;
import dao.RegParcelDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
public class AddParcelServlet extends HttpServlet {
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
        String custsname = request.getParameter("custsname");
        String custrname = request.getParameter("custrname");
        

        if (custsname != null && custrname != null) {
            int custsphone = Integer.parseInt(request.getParameter("custsphone"));
            int custrphone = Integer.parseInt(request.getParameter("custrphone"));
            String custsadd = request.getParameter("custsadd");
            String custradd = request.getParameter("custradd");
            int custsposcode = Integer.parseInt(request.getParameter("custsposcode"));
            int custrposcode = Integer.parseInt(request.getParameter("custrposcode"));
            String custsemail = request.getParameter("custsemail");
            String custremail = request.getParameter("custremail");
            
            double weight = Double.parseDouble(request.getParameter("weight"));
             double height = Double.parseDouble(request.getParameter("height"));
             String shiptype = request.getParameter("shiptype");
             
             int custsid = Integer.parseInt(request.getParameter("custsid"));
            int custrid = Integer.parseInt(request.getParameter("custrid"));
            int staffid = Integer.parseInt(request.getParameter("staffid"));
            
            
            RegInformationBean reginfoBean = new RegInformationBean (int custsid, String custsname, int custsphone, String custsadd, int custsposcode, String custsemail, int custrid, String custrname, int custrphone, String custradd, int custrposcode, String custremail, int itemid, double weight, double height, String shiptype, int staffidl, int custrid, String custrname, int custrphone, String custradd, int custrposcode, String custremail, int itemid, double weight, double height, String shiptype, int staffid);

            if (RegParcelDao.reginfo(reginfoBean)) {
                request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("errMessage", "Insert unsuccessful!");
            }
        } else {
            request.setAttribute("errMessage", "Please insert Branch poscode");
        }

        request.getRequestDispatcher("/regbranch.jsp").forward(request, response);
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
