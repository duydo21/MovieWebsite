/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER
 */
public class FilmCategory {
    String movieid;
    int cid;

    public FilmCategory(String movieid, int cid) {
        this.movieid = movieid;
        this.cid = cid;
    }

    public FilmCategory() {
    }

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    @Override
    public String toString() {
        return "FilmCategory{" + "movieid=" + movieid + ", cid=" + cid + '}';
    }
    
}
