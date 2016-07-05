package com.mypackage;

/**
 * Created by Phuong Tran on 09/06/2016.
 */
public class Cart {
    private int m_quantity;
    private Product m_product;

    public Cart(){}
    public  Cart(Product product, int quantity){
        m_product=product;
        m_quantity=quantity;
    }

    public int getM_quantity() {return m_quantity;}
    public Product getM_product() {return m_product;}

    public void setM_quantity(int quantity) {m_quantity = quantity;}
    public void setM_product(Product product) {m_product = product;}
}
