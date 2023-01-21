/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.user;

import static hotel.res.user.User.conn;
import java.sql.*;

/**
 *
 * @author abhishek-pt4287
 */
public class FetchData {
    public ResultSet fetchData(String user){
        try{
            PreparedStatement pst=conn().prepareStatement("select id from users where user_id=?");
            pst.setString(1, user);
            ResultSet rs=pst.executeQuery();
            rs.next();
            int id=rs.getInt(1);
            Statement stmt=conn().createStatement();
            String query="Select * from hotel where user="+id+" and status='Approved';";
            rs=stmt.executeQuery(query);
            conn().close();
            return rs;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }       
    }
    
}
