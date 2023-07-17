package controller;

import bean.RegInformationBean;
import dao.RegParcelDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddParcelServlet extends HttpServlet {

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
            double shiptype = Double.parseDouble(request.getParameter("shiptype"));

            
            int staffid = Integer.parseInt(request.getParameter("staffid"));

            RegInformationBean reginfoBean = new RegInformationBean(custsname, custsphone, custsadd, custsposcode, custsemail, custrname, custrphone, custradd, custrposcode, custremail, weight, height, shiptype, staffid);

            if (RegParcelDao.reginfo(reginfoBean)) {
                request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
                return;
            } else {
                request.setAttribute("errMessage", "Insert unsuccessful!");
            }
        } else {
            request.setAttribute("errMessage", "Please insert Branch poscode");
        }

        request.getRequestDispatcher("/regparcel.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}