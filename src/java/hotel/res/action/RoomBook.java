/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.action;

import hotel.res.user.User;
import static hotel.res.user.User.conn;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author abhishek-pt4287
 */
public class RoomBook implements SessionAware{
    String id;
    SessionMap<String,String> sessionmap;
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public String execute(){
        try{
        PreparedStatement pst=conn().prepareStatement("select name from rooms where id=?");
        pst.setInt(1, Integer.parseInt(id));
        ResultSet rs=pst.executeQuery();
        rs.next();
        String rname=rs.getString(1);
        sessionmap.put("rname", rname);
            return "SUCCESS";
        }
        catch(Exception e){
            e.printStackTrace();
            return "ERROR";
        }

        
    }

    public void setSession(Map<String,Object> map) {  
    sessionmap=(SessionMap)map;   
}    
}
