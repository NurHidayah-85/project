/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.VehicleBean;
import bean.ItemBranchBean;
import dao.VehicleDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
public class EditVehiclesServlet extends HttpServlet {

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
        int vehicleid = Integer.parseInt(request.getParameter("vehicleid"));

        VehicleBean vehicle = VehicleDao.getVehicle(vehicleid);

        request.setAttribute("vehicle", vehicle);
        request.getRequestDispatcher("/editvehicle.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>PUT</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int vehicleid = Integer.parseInt(request.getParameter("vehicleid"));
        String vehicletype = request.getParameter("vehicletype");
        String noplate = request.getParameter("noplate");
    
        
        VehicleBean vehicle = new VehicleBean(vehicleid, vehicletype, noplate);

        if (VehicleDao.updateVehicle(vehicle)) {
            request.getRequestDispatcher("DisplayVehiclesServlet").forward(request, response);
        }
        else {
            request.setAttribute("vehicle", vehicle);
            request.setAttribute("errMessage", "Update was not succesful!");
            request.getRequestDispatcher("/editvehicle.jsp").forward(request, response);
        }
    }
}
