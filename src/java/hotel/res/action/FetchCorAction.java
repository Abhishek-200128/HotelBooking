/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel.res.action;

import com.opensymphony.xwork2.ActionSupport;
import hotel.res.user.FetchCor;
import hotel.res.user.FetchCorBean;
import hotel.res.user.FetchData;
import hotel.res.user.FetchStateBean;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author abhishek-pt4287
 */
public class FetchCorAction extends ActionSupport{
   List<FetchCorBean> dataList=null;
   List<FetchStateBean> dataList1=null;
    ResultSet rs=null;
    String fetchData="FetchRecords";
    FetchData dataObj= null;

    public List<FetchStateBean> getDataList1() {
        return dataList1;
    }

    public void setDataList1(List<FetchStateBean> dataList1) {
        this.dataList1 = dataList1;
    }

    public List<FetchCorBean> getDataList() {
        return dataList;
    }

    public void setDataList(List<FetchCorBean> dataList) {
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

    public FetchData getDataObj() {
        return dataObj;
    }

    public void setDataObj(FetchData dataObj) {
        this.dataObj = dataObj;
    }
    
    
    public String execute() throws Exception{
        try{
            if(fetchData.equals("FetchRecords")){
                dataList=new ArrayList<FetchCorBean>();
                dataList1=new ArrayList<FetchStateBean>();
                FetchStateBean dataBean1=null;
                FetchCorBean dataBean=null;
                rs=new FetchCor().fetchData();
                if(rs!=null){
                    while(rs.next()){
                        dataBean=new FetchCorBean();
                        dataBean.setId(rs.getInt(1));
                        dataBean.setName(rs.getString(2));
                        dataBean.setLat(rs.getFloat(3));
                        dataBean.setLongi(rs.getFloat(4));
                        dataList.add(dataBean);
                    }
                }
                rs=new FetchCor().fetchState();
                if(rs!=null){
                    while(rs.next()){
                        dataBean1=new FetchStateBean();
                        dataBean1.setName(rs.getString(1));
                        dataBean1.setLat(rs.getFloat(2));
                        dataBean1.setLongi(rs.getFloat(3));
                        dataList1.add(dataBean1);
                    }
                }
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return "SUCCESS";
    }    
}
