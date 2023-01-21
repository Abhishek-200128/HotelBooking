/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.user;

/**
 *
 * @author abhishek-pt4287
 */
public class StateBean {
   private String state;
   private float lat,longi;

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public float getLat() {
        return lat;
    }

    public void setLat(float lat) {
        this.lat = lat;
    }

    public float getLongi() {
        return longi;
    }

    public void setLongi(float longi) {
        this.longi = longi;
    }
   
}
