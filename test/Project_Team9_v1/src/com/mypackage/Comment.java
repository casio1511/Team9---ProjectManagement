package com.mypackage;

import java.util.Date;

/**
 * Created by Phuong Tran on 10/06/2016.
 */
public class Comment {
    private int m_ID;
    private String m_Username;
    private String m_Email;
    private String m_Content;
    private Date m_Date;
    private int m_IDProduct;

    public Comment(){}
    public Comment(String Username, String Email, String Content, int IDProduct){
        m_Username = Username;
        m_Email = Email;
        m_Content = Content;
        m_IDProduct = IDProduct;
    }

    public void setM_ID (int ID){ m_ID = ID;}
    public void setM_Username (String Username) {m_Username = Username;}
    public void setM_Email (String Email) {m_Email = Email;}
    public void setM_Content (String Content) {m_Content = Content;}
    public void setM_Date (Date Date) {m_Date = Date;}
    public void setM_IDProduct (int IDProduct) {m_IDProduct = IDProduct;}

    public int getM_ID() {return m_ID;}
    public String getM_Username() {return m_Username;}
    public String getM_Email() {return m_Email;}
    public String getM_Content() {return m_Content;}
    public Date getM_Date() {return m_Date;}
    public int getM_IDProduct() {return m_IDProduct;}
}
