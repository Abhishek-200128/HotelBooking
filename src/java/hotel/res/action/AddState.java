/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.action;

import com.opensymphony.xwork2.ActionSupport;
import hotel.res.user.User;
import java.io.File;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;

/**
 *
 * @author abhishek-pt4287
 */
public class AddState extends ActionSupport{
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
    
    public String execute() throws Exception{
        int rec=User.addState(this);
        if(rec>0){
            return "SUCCESS";
        }
        else{
            return "ERROR";
        }
    }
   
    
    public void validate(){
        if(state.equals("")){
            addFieldError("state","State is Required");
        }
        if(lat==0){
            addFieldError("lat","Latitude is Required");
        }
        if(longi==0){
            addFieldError("longi","Longitude is Required");
        }
    }  
}
