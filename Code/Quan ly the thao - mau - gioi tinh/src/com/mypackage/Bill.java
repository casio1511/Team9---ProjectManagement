package com.mypackage;

import java.util.Date;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class Bill {
    private int m_ID;
    private String m_Name;
    private String m_Address;
    private String m_Phone;
    private int m_Quantity;
    private double m_Total;
    private int m_Status;
    private Date m_Date;
    private String m_Email;

    public Bill(){}
    public Bill(String Name, String Address, String Phone, int Quantity, double Total, String Email){
        m_Name = Name;
        m_Address = Address;
        m_Phone = Phone;
        m_Quantity = Quantity;
        m_Total = Total;
        m_Email = Email;
    }

    public void setM_ID(int ID){m_ID = ID;}
    public void setM_Name (String Name){m_Name = Name;}
    public void setM_Address(String Address){m_Address = Address;}
    public void setM_Phone (String Phone){m_Phone = Phone;}
    public void setM_Quantity(int Quantity){m_Quantity = Quantity;}
    public void setM_Total(double Total){m_Total = Total;}
    public void setM_Status (int Status){m_Status = Status;}
    public void setM_Date (Date Date){m_Date = Date;}
    public void setM_Email (String Email) {m_Email = Email;}

    public int getM_ID(){return m_ID;}
    public String getM_Name(){return m_Name;}
    public String getM_Address(){return m_Address;}
    public String getM_Phone(){return m_Phone;}
    public int getM_Quantity(){return m_Quantity;}
    public double getM_Total(){return m_Total;}
    public int getM_Status(){return m_Status;}
    public Date getM_Date(){return m_Date;}
    public String getM_Email(){return m_Email;}
}
