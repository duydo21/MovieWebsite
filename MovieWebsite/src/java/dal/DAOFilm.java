/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Film;
import model.FilmCategory;

/**
 *
 * @author ACER
 */
public class DAOFilm extends DBContext {

    public String getCategoryByCID(int cid) {
        String sql = "SELECT [cname] FROM [dbo].[Category]\n"
                + "  where [cid]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException e) {

        }
        return null;
    }
    
    public Film getFilmByMS(String msphim) {
        String sql = "SELECT * FROM [dbo].[Movie]\n"
                + "  where [movieid]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, msphim);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Film(rs.getString(1), rs.getBoolean(2), rs.getString(3),
                        rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Film> getAllFilm() {
        String sql = "SELECT * FROM [dbo].[Movie]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            List<Film> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Film(rs.getString(1), rs.getBoolean(2), rs.getString(3),
                        rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10)));
            }
            return list;
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Film> getFilmLeOrBo(boolean isle) {
        String sql = "SELECT * FROM [dbo].[Movie] where isle=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setBoolean(1, isle);
            ResultSet rs = st.executeQuery();
            List<Film> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Film(rs.getString(1), rs.getBoolean(2), rs.getString(3),
                        rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10)));
            }
            return list;
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Film> getFilmByCountry(String country) {
        String sql = "SELECT * FROM [dbo].[Movie] where country=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, country);
            ResultSet rs = st.executeQuery();
            List<Film> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Film(rs.getString(1), rs.getBoolean(2), rs.getString(3),
                        rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10)));
            }
            return list;
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Film> getFilmByYear(String year) {
        String sql = "SELECT * FROM [dbo].[Movie] where publishyear=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, year);
            ResultSet rs = st.executeQuery();
            List<Film> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Film(rs.getString(1), rs.getBoolean(2), rs.getString(3),
                        rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10)));
            }
            return list;
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Film> getFilmByOwner(String Owner) {
        String sql = "SELECT * FROM [dbo].[Movie] where movieowner=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, Owner);
            ResultSet rs = st.executeQuery();
            List<Film> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Film(rs.getString(1), rs.getBoolean(2), rs.getString(3),
                        rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10)));
            }
            return list;
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Film> getFilmByName(String name) {
        String sql = "SELECT * FROM [dbo].[Movie] where [moviename] like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%"+name+"%");
            ResultSet rs = st.executeQuery();
            List<Film> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new Film(rs.getString(1), rs.getBoolean(2), rs.getString(3),
                        rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10)));
            }
            return list;
        } catch (SQLException e) {

        }
        return null;
    }
    
    public List<Film> getFilmByCategory(int cid) {
        String sql = "SELECT * FROM [dbo].[Movie-Category] where cid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            List<FilmCategory> list = new ArrayList<>();
            List<Film> list1 = new ArrayList<>();
            while (rs.next()) {
                list.add(new FilmCategory(rs.getString(1), rs.getInt(2)));
            }
            for (int i = 0; i < list.size(); i++) {
                list1.add(getFilmByMS(list.get(i).getMovieid()));
            }
            return list1;
        } catch (SQLException e) {

        }
        return null;
    }
    
    public static void main(String[] args) {
        DAOFilm dao = new DAOFilm();
        List<Film> list = dao.getFilmByName("on");
        for (Film i : list) {
            System.out.println(i);
        }
        
    }

    public void deleteFilmByMovieID(String movieid) {
        String sql = "DELETE FROM [dbo].[Movie] WHERE [movieid]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, movieid);
            st.executeQuery();
        } catch (SQLException e) {

        }
    }

    public void addFilm(Film f) {
        String sql = "INSERT [dbo].[Movie] "
                + "([movieid], [isle], [moviename], [publishyear], [Duration], "
                + "[country], [poster], [film],[content],[movieowner]) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, f.getMovieid());
            st.setBoolean(2, f.isIsle());
            st.setString(3, f.getMoviename());
            st.setString(4, f.getPublishyear());
            st.setDouble(5, f.getDuration());
            st.setString(6, f.getCountry());
            st.setString(7, f.getPoster());
            st.setString(8, f.getFilm());
            st.setString(9, f.getContent());
            st.setString(10, f.getMovieowner());
            st.executeQuery();
        } catch (SQLException e) {

        }
    }

    public void updateFilm(Film a) {
        String sql = "UPDATE [dbo].[Movie]\n"
                + "   SET [isle] = ?\n"
                + "      ,[moviename] = ?\n"
                + "      ,[publishyear] = ?\n"
                + "      ,[Duration] = ?\n"
                + "      ,[country] = ?\n"
                + "      ,[poster] = ?\n"
                + "      ,[film] = ?\n"
                + "      ,[content] = ?\n"
                + "      ,[movieowner] = ?\n"
                + " WHERE movieid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setBoolean(1, a.isIsle());
            st.setString(2, a.getMoviename());
            st.setString(3, a.getPublishyear());
            st.setDouble(4, a.getDuration());
            st.setString(5, a.getCountry());
            st.setString(6, a.getPoster());
            st.setString(7, a.getFilm());
            st.setString(8, a.getContent());
            st.setString(9, a.getMovieowner());
            st.setString(10, a.getMovieid());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
