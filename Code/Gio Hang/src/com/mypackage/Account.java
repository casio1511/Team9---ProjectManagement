package com.mypackage;

import java.util.Date;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class Account {
    private int m_ID;
    private String m_Username;
    private String m_Name;
    private String m_Password;
    private String m_Email;
    private String m_Address;
    private String m_Phone;
    private Date m_Date;
    private int m_Status;

    public Account(){}
    public Account(String Username, String Name, String Password, String Email,
                   String Address, String Phone, int Status){
        m_Username = Username;
        m_Name = Name;
        m_Password = Password;
        m_Email = Email;
        m_Address = Address;
        m_Phone = Phone;
        m_Status = Status;
    }

    public void setM_ID (int ID){ m_ID = ID;}
    public void setM_Username (String Username){m_Username = Username;}
    public void setM_Name (String Name) {m_Name = Name;}
    public void setM_Password (String Password){m_Password = Password;}
    public void setM_Email (String Email) {m_Email = Email;}
    public void setM_Address (String Address) {m_Address = Address;}
    public void setM_Phone (String Phone) {m_Phone = Phone;}
    public void setM_Date (Date Date) {m_Date = Date;}
    public void setM_Status (int Status) {m_Status = Status;}

    public int getM_ID (){return m_ID;}
    public String getM_Username() {return m_Username;}
    public String getM_Name (){return m_Name;}
    public String getM_Password(){return m_Password;}
    public String getM_Email(){return m_Email;}
    public String getM_Address(){return m_Address;}
    public String getM_Phone(){return m_Phone;}
    public Date getM_Date(){return m_Date;}
    public int getM_Status(){return m_Status;}
}
