package com.mypackage;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class Color {
    private int m_ID;
    private String m_Name;

    public Color(){}
    public Color(int ID, String Name){
        m_ID = ID;
        m_Name = Name;
    }

    public void setM_ID (int ID){ m_ID = ID;}
    public void setM_Name (String Name) {m_Name = Name;}

    public int getM_ID (){return m_ID;}
    public String getM_Name (){return m_Name;}
}
