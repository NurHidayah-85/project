/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import bean.BranchBean;
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
public class DeleteBranchServlet extends HttpServlet {

   
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
        
         BranchBean branch = (BranchBean)request.getSession().getAttribute("branch");
        
        String branchId = request.getParameter("branchId");
        
        AbsenceDao.deleteAbsence(int.parseInt(branchId));
        
        setPageBeans(request, branch.getBranchId());
        request.getRequestDispatcher("/editBranch.jsp").forward(request, response); 
    }
    
    private void setPageBeans(HttpServletRequest request, long accountId) {
        request.setAttribute("expertises", ExpertiseDao.getExpertises());
        request.setAttribute("absences", AbsenceDao.getAbsencesByAccount(accountId));
    }
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
