package com.mypackage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;

/**
 * Created by Phuong Tran on 09/06/2016.
 */
public class CartController extends HttpServlet {
    private static final long serialVersionUID =1L;
    private List<Cart> cart = new ArrayList<Cart>();
    public CartController(){
        super();}

    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException, IOException {
        HttpSession session = request.getSession();
        if(request.getParameter("action") != null){
            if (session.getAttribute("cart") != null) {
                cart = (ArrayList<Cart>) session.getAttribute("cart");
                for(int i=0; i<cart.size(); i++)
                    cart.remove(i);
                session.setAttribute("cart", cart);
                session.setAttribute("total", 0);
                response.sendRedirect("product.jsp");
            }
        }
        else {
            String name = request.getParameter("name");
            int size = Integer.parseInt(request.getParameter("size"));
            int color = Integer.parseInt(request.getParameter("color"));
            Product product = ProductDAO.getSizeProduct(name, size, color);
            int total = 0;
            int flag = 0;
            if (session.getAttribute("cart") != null) {
                cart = (ArrayList<Cart>) session.getAttribute("cart");
            }
            if (session.getAttribute("total") == null) {
                total = 1;
            }
            else {
                 total = (Integer) session.getAttribute("total");
                 if(total < product.getM_Quantity())
                    total++;
                 else
                     flag = 1;
            }
            session.setAttribute("total", total);
            if(flag == 0) {
                addToCart(product);
            }
            session.setAttribute("cart", cart);
            response.sendRedirect("checkout.jsp");
        }
    }

    public String addToCart(Product product){
        for(Cart item: cart) {
            if (item.getM_product().getM_ID() == product.getM_ID()) {
                int quantity = item.getM_quantity();
                if(item.getM_quantity() + 1 > product.getM_Quantity())
                    item.setM_quantity(item.getM_quantity() + 1);
                return "cart";
            }
        }
        Cart c = new Cart();
        c.setM_product(product);
        c.setM_quantity(1);
        cart.add(c);
        return "cart";
    }
}
