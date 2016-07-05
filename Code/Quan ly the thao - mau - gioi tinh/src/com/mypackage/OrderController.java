package com.mypackage;

import com.mypackage.Product;
import com.mypackage.ProductDAO;
import com.mypackage.AccountDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by Phuong Tran on 17/06/2016.
 */
public class OrderController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Object OrderDao;

    public OrderController(){}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email=request.getParameter("email");
        String name=request.getParameter("name");
        String phone=request.getParameter("phone");
        String address=request.getParameter("address");
        HttpSession session=request.getSession();
        String err="";
        ArrayList<Cart> list = (ArrayList<Cart>) session.getAttribute("cart");
        Product product =new Product();
        session.setAttribute("errCheckout", "");
        String username=(String)session.getAttribute("username");
        int userid=0;
        double total=0;
        double totalper = 0;
        int total_quantity = 0;
        int billid = 0;
        Bill bill = new Bill();
            userid= AccountDAO.getUserByUsername(username).getM_ID();
            for (Cart cart:list){
                double sum = cart.getM_product().getM_Price()*cart.getM_quantity();
                total=total+ sum;
                total_quantity = total_quantity + cart.getM_quantity();
            }
            if (err.length() == 0 ) {
                bill = new Bill(name, address, phone, total_quantity, total, email);
                BillDAO.Insert(bill);
                Bill bill_new = BillDAO.getLastBill();
                billid = bill_new.getM_ID();
                List<Product> list_pd = new ArrayList<Product>();
                for(Cart cart:list) {
                    totalper=(double)cart.getM_quantity()*ProductDAO.getByID(cart.getM_product().getM_ID()).getM_Price();
                    Product product1 = cart.getM_product();
                    BillDetail bill_detail = new BillDetail(billid, product1.getM_ID(), cart.getM_quantity(), product1.getM_Price(), totalper);
                    BillDetailDAO.InsertDetail(bill_detail);
                    list_pd.add(product1);
                }
                SendEmail.main(SendMailJSPGUI.Receipt(name, bill_new.getM_Date(), billid, bill_new.getM_Total(), address, list_pd), "hellenp1995@gmail.com", "Receipt");
                do {
                    for (int i = 0; i < list.size(); i++) {
                        list.remove(list.get(i));
                    }
                } while(list.size()>0);
                err="Order complete";
            } else{
                if(err.equals("empty")){
                    err="Empty cart.\n" + " Please add products to cart";
                }else if (err.equals("false")){
                    err="Incorrect Information";
                }
            }
            if(err.equals("empty")){
                err="Empty cart.\n" + " Please add products to cart";
            }
            session.setAttribute("errCheckout",err);

        if(err.equals("Order complete")) {
            session.setAttribute("cart", null);
            session.setAttribute("total", null);
            response.sendRedirect("receipt.jsp");
        }
        else
            response.sendRedirect("confirm.jsp");
    }
}
