/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author ACER
 */
public class DAO extends DBContext {

    public Account login(String username, String password) {
        String sql = "SELECT [username]\n"
                + "      ,[password]\n"
                + "      ,[name]\n"
                + ",[mail]\n"
                + ",[phone]\n"
                + ",[accBalance]\n"
                + ",[typeofaccount]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where [username]=? and [password]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt("typeofaccount"),rs.getString("username"),
                        rs.getString("password"),rs.getString("name"),
                        rs.getString("mail"),rs.getString("phone"),rs.getDouble("accBalance"));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public boolean checkUsername(String username) {
        String sql = "SELECT [username]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where [username]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (SQLException e) {

        }
        return true;
    }

    public void signUp(Account a) {
        String sql = "INSERT [dbo].[Account] "
                + "([type], [username], [password], [name], [mail], [phone], [accBalance]) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, 1);
            st.setString(2, a.getPassword());
            st.setString(3, a.getPassword());
            st.setString(4, a.getName());
            st.setString(5, a.getMail());
            st.setString(6, a.getPhone());
            st.setDouble(7, 0);
            st.executeQuery();
        } catch (SQLException e) {

        }
    }


    public Account getUserByUsername(String username) {
        String sql = "SELECT [username]\n"
                + "      ,[password]\n"
                + "      ,[name]\n"
                + ",[mail]\n"
                + ",[phone]\n"
                + ",[accBalance]\n"
                + ",[typeofaccount]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where [username]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(rs.getInt("typeofaccount"),rs.getString("username"),
                        rs.getString("password"),rs.getString("name"),
                        rs.getString("mail"),rs.getString("phone"),rs.getDouble("accBalance"));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public void changeInfo(Account a) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [name] = ?\n"
                + "      ,[mail] = ?\n"
                + "      ,[phone] = ?\n"
                + " WHERE username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getName());
            st.setString(2, a.getMail());
            st.setString(3, a.getPhone());
            st.setString(4, a.getUsername());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void changePassword(Account a) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [password] = ?\n"
                + " WHERE username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getPassword());
            st.setString(2, a.getName());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        Account a = dao.login("duy","duy123");
        System.out.println(a);
        
    }
}
