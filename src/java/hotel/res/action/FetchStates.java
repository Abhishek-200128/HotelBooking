/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.action;

import hotel.res.user.FetchBookedBean;
import hotel.res.user.StateBean;
import hotel.res.user.User;
import hotel.res.user.fetchRoom;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author abhishek-pt4287
 */
public class FetchStates {
    List<StateBean> dataList=null;
    ResultSet rs=null;
    String fetchData="FetchRooms";
    fetchRoom dataObj= null;   

    public List<StateBean> getDataList() {
        return dataList;
    }

    public void setDataList(List<StateBean> dataList) {
        this.dataList = dataList;
    }


    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public String getFetchData() {
        return fetchData;
    }

    public void setFetchData(String fetchData) {
        this.fetchData = fetchData;
    }

    public fetchRoom getDataObj() {
        return dataObj;
    }

    public void setDataObj(fetchRoom dataObj) {
        this.dataObj = dataObj;
    }
    
    public String execute(){
        try{
                dataList=new ArrayList<StateBean>();
                StateBean dataBean=null;
                rs=User.getStates();
                if(rs!=null){
                    while(rs.next()){
                        dataBean=new StateBean();
                        dataBean.setState(rs.getString(1));
                        dataBean.setLat(rs.getFloat(2));
                        dataBean.setLongi(rs.getFloat(3));
                        dataList.add(dataBean);
                    }
                }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return "SUCCESS";        
    }
}
