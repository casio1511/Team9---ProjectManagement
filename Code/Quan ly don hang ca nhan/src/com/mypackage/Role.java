package com.mypackage;

/**
 * Created by Phuong Tran on 28/06/2016.
 */
public class Role {
    private int m_ID;
    private String m_Name;
    private int m_Product;
    private int m_Bill;
    private int m_Account;

    public Role(){}
    public Role(String name, int product, int bill, int account){
        m_Name = name;
        m_Product = product;
        m_Bill = bill;
        m_Account = account;
    }

    public int getM_ID(){
        return m_ID;
    }
    public String getM_Name(){
        return m_Name;
    }
    public int getM_Product() {return m_Product;}
    public int getM_Bill(){return m_Bill;}
    public int getM_Account(){return m_Account;}

    public void setM_ID(int id){
        m_ID = id;
    }
    public void setM_Name(String name){
        m_Name = name;
    }
    public void setM_Product(int product){m_Product = product;}
    public void setM_Bill(int bill){m_Bill = bill;}
    public void setM_Account(int account){m_Account = account;}
}
