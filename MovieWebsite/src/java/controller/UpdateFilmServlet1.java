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
import model.Film;

/**
 *
 * @author ACER
 */
@WebServlet(name = "UpdateFilmServlet1", urlPatterns = {"/updatefilm1"})
public class UpdateFilmServlet1 extends HttpServlet {

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
            out.println("<title>Servlet UpdateFilmServlet1</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateFilmServlet1 at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("update1.jsp").forward(request, response);
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
        String movieid = request.getParameter("movieid");
        String raw_isle = request.getParameter("isle");
        String name = request.getParameter("name");
        String raw_duration = request.getParameter("duration");
        String country = request.getParameter("country");
        String year = request.getParameter("year");
        String poster = request.getParameter("poster");
        String film = request.getParameter("film");
        String content = request.getParameter("content");
        String owner = request.getParameter("owner");
        DAOFilm dao = new DAOFilm();
        Film newFilm = dao.getFilmByMS(movieid);

        boolean isle = true;
        if (raw_isle.equals("0")) {
            isle = false;
        }

        double duration = 0;
        try {
            duration = Double.parseDouble(raw_duration);
        } catch (Exception e) {
        }

        newFilm.setContent(content);
        newFilm.setCountry(country);
        newFilm.setDuration(duration);
        newFilm.setFilm(film);
        newFilm.setIsle(isle);
        newFilm.setMoviename(name);
        newFilm.setMovieowner(owner);
        newFilm.setPoster(poster);
        newFilm.setPublishyear(year);

        dao.updateFilm(newFilm);
        request.setAttribute("ms", "Update successful!");
        request.getRequestDispatcher("update1.jsp").forward(request, response);
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
