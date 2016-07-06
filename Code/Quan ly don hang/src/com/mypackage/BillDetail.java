package com.mypackage;

/**
 * Created by Phuong Tran on 15/06/2016.
 */
public class BillDetail {
    private int m_ID;
    private int m_IDBill;
    private int m_Product;
    private int m_Quantity;
    private double m_Price;
    private double m_Total;

    public BillDetail(){}
    public BillDetail(int IDBill, int Product, int Quantity, double Price, double Total){
        m_IDBill = IDBill;
        m_Product = Product;
        m_Quantity = Quantity;
        m_Price = Price;
        m_Total = Total;
    };

    public void setM_ID(int ID){m_ID = ID;}
    public void setM_IDBill(int IDBill){m_IDBill = IDBill;}
    public void setM_Product(int Product){m_Product = Product;}
    public void setM_Quantity (int Quantity){m_Quantity = Quantity;}
    public void setM_Price (double Price){m_Price = Price;}
    public void setM_Total (double Total) {m_Total = Total;}

    public int getM_ID(){return m_ID;}
    public int getM_IDBill(){return m_IDBill;}
    public int getM_Product(){return m_Product;}
    public int getM_Quantity(){return m_Quantity;}
    public double getM_Price(){return m_Price;}
    public double getM_Total(){return m_Total;}
}
