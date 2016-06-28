package com.mypackage;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class BillDAO {
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Driver could not be loaded: " + cnf);
        }
    }

    public BillDAO() {}
}
