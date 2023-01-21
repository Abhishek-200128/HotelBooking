/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.action;

import com.opensymphony.xwork2.ActionSupport;
import hotel.res.user.User;
import static hotel.res.user.User.conn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author abhishek-pt4287
 */
public class GetHotel extends ActionSupport{
    private String id,name,state,address;
    List<String> apptnList1;
    private int pincode,phone;
    private float lat,longi;

    public List<String> getApptnList1() {
        return apptnList1;
    }

    public void setApptnList1(List<String> apptnList1) {
        this.apptnList1 = apptnList1;
    }

    
    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public String getState() {
        return state;
    }

    public String getAddress() {
        return address;
    }

    public int getPincode() {
        return pincode;
    }

    public float getLat() {
        return lat;
    }

    public float getLongi() {
        return longi;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public void setLat(float lat) {
        this.lat = lat;
    }

    public void setLongi(float longi) {
        this.longi = longi;
    }
    
    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public String execute(){
        apptnList1 = new ArrayList<String>();
        try{
            PreparedStatement pst=conn().prepareStatement("select name from states;");
        ResultSet rs=pst.executeQuery();
    while(rs.next()){
       apptnList1.add(rs.getString(1));
    }
        GetHotel gh=User.getHotel(this);
        this.setName(gh.getName());
        this.setState(gh.getState());
        this.setAddress(gh.getAddress());
        this.setPincode(gh.getPincode());
        this.setLat(gh.getLat());
        this.setLongi(gh.getLongi());
        this.setPhone(gh.getPhone());
        HttpSession session=ServletActionContext.getRequest().getSession(false);
        String user=session.getAttribute("login").toString();
        if(user.equals("admin")){
            return "SADMIN";
        }
        else{
        return "SUCCESS";
        }
        }
        catch(Exception e){
            e.printStackTrace();
            return "ERROR";
        }
    }
}
