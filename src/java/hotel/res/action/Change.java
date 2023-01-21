/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.action;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author abhishek-pt4287
 */
public class Change extends ActionSupport{
    @Override
    public String execute(){
        HttpSession session=ServletActionContext.getRequest().getSession(false);
        String user=session.getAttribute("login").toString();
        if(user.equals("admin")){
            System.out.print("SADMIN");
            return "SADMIN";
        }
        else{
            System.out.print("ERROR");
        return "ERROR";
        }
    }
}
