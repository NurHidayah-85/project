/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.TrackingStatusBean;
import dao.TrackingStatusDao;
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
public class AddTrackingStatusServlet extends HttpServlet {

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
        String status = request.getParameter("status");

        if (status != null) {
            int branchId = Integer.parseInt(request.getParameter("branchId"));
            int itemId = Integer.parseInt(request.getParameter("itemId"));
            int vehicleId = Integer.parseInt(request.getParameter("vehicleId"));

            TrackingStatusBean addtrackingBean = new TrackingStatusBean(itemId, branchId, status, vehicleId);

            if (TrackingStatusDao.addtrackingstatus(addtrackingBean)) {
                request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("errMessage", "Insert unsuccessful!");
            }
        } else {
            request.setAttribute("errMessage", "Please insert the following fields correctly");
        }

        request.getRequestDispatcher("/trackingstatus.jsp").forward(request, response);
    }
}
