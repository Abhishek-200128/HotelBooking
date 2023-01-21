/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.action;

import hotel.res.user.User;

/**
 *
 * @author abhishek-pt4287
 */
public class RemoveState {
   private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    
    public String execute(){
        try{
            int rec=User.removeState(this);
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
