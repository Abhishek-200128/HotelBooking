package hotel.res.action;

import com.opensymphony.xwork2.ActionSupport;
import hotel.res.user.User;
import static hotel.res.user.User.conn;
import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author abhishek-pt4287
 */
public class RemoveHotel extends ActionSupport{
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public String execute(){
        try{
            int rec=User.removeHotel(this);
            if(rec==1){
            return "SUCCESS";
            }
            else{
                return "ERROR";
            }
        }
        catch(Exception e){
            e.printStackTrace();
            return "ERROR";
        }
    }
}
