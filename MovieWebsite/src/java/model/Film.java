/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ACER
 */
public class Film {
    String movieid;
    boolean isle;
    String moviename, publishyear;
    double duration;
    String country, poster, film, content, movieowner;

    public Film() {
    }

    public Film(String movieid, boolean isle, String moviename, String publishyear, double duration, String country, String poster, String film, String content, String movieowner) {
        this.movieid = movieid;
        this.isle = isle;
        this.moviename = moviename;
        this.publishyear = publishyear;
        this.duration = duration;
        this.country = country;
        this.poster = poster;
        this.film = film;
        this.content = content;
        this.movieowner = movieowner;
    }

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid;
    }

    public boolean isIsle() {
        return isle;
    }

    public void setIsle(boolean isle) {
        this.isle = isle;
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }

    public String getPublishyear() {
        return publishyear;
    }

    public void setPublishyear(String publishyear) {
        this.publishyear = publishyear;
    }

    public double getDuration() {
        return duration;
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getFilm() {
        return film;
    }

    public void setFilm(String film) {
        this.film = film;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getMovieowner() {
        return movieowner;
    }

    public void setMovieowner(String movieowner) {
        this.movieowner = movieowner;
    }

    @Override
    public String toString() {
        return "Film{" + "movieid=" + movieid + ", isle=" + isle + ", moviename=" + moviename + ", publishyear=" + publishyear + ", duration=" + duration + ", country=" + country + ", poster=" + poster + ", film=" + film + ", content=" + content + ", movieowner=" + movieowner + '}';
    }
    
}
