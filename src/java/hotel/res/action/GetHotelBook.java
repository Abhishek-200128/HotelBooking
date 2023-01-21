/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.action;

import com.opensymphony.xwork2.ActionSupport;
import static hotel.res.user.User.conn;
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
public class GetHotelBook implements SessionAware{
    private String name;
    SessionMap<String,String> sessionmap; 

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String execute() throws Exception{
        PreparedStatement pst=conn().prepareStatement("select name from hotel where id=?;");
        pst.setInt(1,Integer.parseInt(name));
        ResultSet rs=pst.executeQuery();
        rs.next();
        String hname=rs.getString(1);
    sessionmap.put("hotel",name);
    sessionmap.put("hname",hname);
    return "SUCCESS";
    }

    public void setSession(Map<String,Object> map) {  
    sessionmap=(SessionMap)map;   
} 
    
}
