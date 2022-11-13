/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAOFilm;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Film;

/**
 *
 * @author ACER
 */
@WebServlet(name = "FilmFilterServlet", urlPatterns = {"/filmfilter"})
public class FilmFilterServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FilmFilterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FilmFilterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String owner = request.getParameter("owner");
        String raw_cid = request.getParameter("cid");
        int cid = 0;
        String type = request.getParameter("type");
        String year = request.getParameter("year");
        String country = request.getParameter("country");
        String raw_isle = request.getParameter("isle");
        String ten = request.getParameter("filmname");
        String a = "Phim Bộ";
        boolean isle = false;
        if (raw_isle != null) {
            if (raw_isle.equals("1")) {
                isle = true;
                a = "Phim Lẻ";
            }
        }
        try {
            cid = Integer.parseInt(raw_cid);
        } catch (Exception e) {

        }
        List<Film> list = new ArrayList<>();
        DAOFilm dao = new DAOFilm();
        if (owner != null) {
            list = dao.getFilmByOwner(owner);
            request.setAttribute("ms", "Film by " + owner);
        }
        if (raw_cid != null && cid != 0) {
            list = dao.getFilmByCategory(cid);
            request.setAttribute("ms", "Phim "+dao.getCategoryByCID(cid));
        }
        if (type != null) {
            list = dao.getFilmByOwner("Marvel");
            list.addAll(dao.getFilmByOwner("DC"));
            list.addAll(dao.getFilmByCategory(6));
            request.setAttribute("ms", "Phim thịnh hành");
        }
        if (year != null) {
            list = dao.getFilmByYear(year);
            request.setAttribute("ms", "Năm: " + year);
        }
        if (country != null) {
            list = dao.getFilmByCountry(country);
            request.setAttribute("ms", "Quốc gia: " + country);
        }
        if (raw_isle != null) {
            list = dao.getFilmLeOrBo(isle);
            request.setAttribute("ms", a);
        }
        if(ten!=null){
            list = dao.getFilmByName(ten);
        }
        request.setAttribute("list", list);
        request.getRequestDispatcher("FilteredFilmList.jsp").forward(request, response);
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
