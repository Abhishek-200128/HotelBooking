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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author abhishek-pt4287
 */
public class ComboBox extends ActionSupport {
    List<String> apptnList; //add getter and setters

    public List<String> getApptnList() {
        return apptnList;
    }

    public void setApptnList(List<String> apptnList) {
        this.apptnList = apptnList;
    }
    
public String execute()
{
    apptnList = new ArrayList<String>();
    try{
        PreparedStatement pst=conn().prepareStatement("select name from states;");
        ResultSet rs=pst.executeQuery();
    while(rs.next()){
       apptnList.add(rs.getString(1));
    }
    return "SUCCESS";
    }
    catch(Exception e){
       e.printStackTrace();
       return "ERROR";
    }
    
}
}
