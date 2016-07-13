package com.mypackage;

import java.util.Date;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class Product {
    private int m_ID;
    private String m_Name;
    private int m_Category;
    private int m_Sport;
    private int m_Gender;
    private int m_Color;
    private int m_Size;
    private double m_Price;
    private int m_Quantity;
    private Date m_ImportedDate;
    private int m_Status;
    private int m_View;
    private String m_Image;

    public Product(){}
    public Product(int ID, String Name, int Category, int Sport, int Gender, int Color, int Size,
                   double Price, int Quantity, Date ImpotedDate, int Status, int View,
                   String Image){
        m_ID = ID;
        m_Name = Name;
        m_Category = Category;
        m_Sport = Sport;
        m_Gender = Gender;
        m_Color = Color;
        m_Size = Size;
        m_Price = Price;
        m_Quantity = Quantity;
        m_ImportedDate = ImpotedDate;
        m_Status = Status;
        m_View = View;
        m_Image = Image;
    }

    public void setM_ID (int ID){ m_ID = ID;}
    public void setM_Name (String Name) {m_Name = Name;}
    public void setM_Category (int Category) {m_Category = Category;}
    public void setM_Sport (int Sport) {m_Sport = Sport;}
    public void setM_Gender (int Gender) {m_Gender = Gender;}
    public void setM_Color (int Color) {m_Color = Color;}
    public void setM_Size (int Size) {m_Size = Size;}
    public void setM_Price (double Price) {m_Price = Price;}
    public void setM_Quantity (int Quantity) {m_Quantity = Quantity;}
    public void setM_Status (int Status) {m_Status = Status;}
    public void setM_View (int View) {m_View = View;}
    public void setM_Image (String Image) {m_Image = Image;}
    public void setM_ImportedDate (Date ImportedDate){m_ImportedDate = ImportedDate;}

    public int getM_ID (){return m_ID;}
    public String getM_Name (){return m_Name;}
    public int getM_Category(){return m_Category;}
    public int getM_Sport(){return m_Sport;}
    public int getM_Gender(){return m_Gender;}
    public int getM_Color(){return m_Color;}
    public int getM_Size(){return m_Size;}
    public double getM_Price() {return m_Price;}
    public int getM_Quantity(){return m_Quantity;}
    public int getM_Status(){return m_Status;}
    public int getM_View(){return m_View;}
    public String getM_Image(){return m_Image;}
    public Date getM_ImportedDate(){return m_ImportedDate;}
}
