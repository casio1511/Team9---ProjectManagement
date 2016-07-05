package com.mypackage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Phuong Tran on 08/06/2016.
 */
public class ProductDAO {
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException cnf) {
            System.out.println("Driver could not be loaded: " + cnf);
        }
    }

    public ProductDAO() {}

    public static List<Product> getAll() throws SQLException {
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        String sql = "select DISTINCT * from product GROUP BY Name, Color";
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            java.sql.Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static Product getByID(int id){
        Product product = new Product();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("SELECT * FROM product WHERE ID = ?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return product;
    }

    public static List<Product> getSizeOfProduct(Product product){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select * from product where name=? and color=?");
            stmt.setString(1, product.getM_Name());
            stmt.setInt(2, product.getM_Color());
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product new_product = new Product();
                new_product.setM_ID(rs.getInt("ID"));
                new_product.setM_Name(rs.getString("Name"));
                new_product.setM_Category(rs.getInt("Category"));
                new_product.setM_Sport(rs.getInt("Sport"));
                new_product.setM_Gender(rs.getInt("Gender"));
                new_product.setM_Color(rs.getInt("Color"));
                new_product.setM_Size(rs.getInt("Size"));
                new_product.setM_Quantity(rs.getInt("Quantity"));
                new_product.setM_Price(rs.getDouble("Price"));
                new_product.setM_ImportedDate(rs.getDate("ImportedDate"));
                new_product.setM_Status(rs.getInt("Status"));
                new_product.setM_View(rs.getInt("View"));
                new_product.setM_Image(rs.getString("Image"));
                list.add(new_product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static List<Product> getProductOfCategory (int category){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product where category = ? GROUP BY name");
            stmt.setInt(1, category);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product new_product = new Product();
                new_product.setM_ID(rs.getInt("ID"));
                new_product.setM_Name(rs.getString("Name"));
                new_product.setM_Category(rs.getInt("Category"));
                new_product.setM_Sport(rs.getInt("Sport"));
                new_product.setM_Gender(rs.getInt("Gender"));
                new_product.setM_Color(rs.getInt("Color"));
                new_product.setM_Size(rs.getInt("Size"));
                new_product.setM_Quantity(rs.getInt("Quantity"));
                new_product.setM_Price(rs.getDouble("Price"));
                new_product.setM_ImportedDate(rs.getDate("ImportedDate"));
                new_product.setM_Status(rs.getInt("Status"));
                new_product.setM_View(rs.getInt("View"));
                new_product.setM_Image(rs.getString("Image"));
                list.add(new_product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static boolean checkProductSameCategory (int category, String name){
        boolean check = false;
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product where category = ? and product.name != ? GROUP BY name");
            stmt.setInt(1, category);
            stmt.setString(2, name);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                if(rs.getString("Name") != null) {
                    check = true;
                }
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return check;
    }

    public static List<Product> getAllPaging(int page, int row){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product GROUP BY Name, Color LIMIT ?, ?");
            stmt.setInt(1, (page-1)*row);
            stmt.setInt(2, row);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static int countGetAll(){
        int count=0;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("select DISTINCT * from product GROUP BY Name, Color");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                count++;
            }
        }catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }

    public static List<Product> getAllSportPaging(int sport, int page, int row){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product where sport=? GROUP BY Name, Color LIMIT ?, ?");
            stmt.setInt(1, sport);
            stmt.setInt(2, (page-1)*row);
            stmt.setInt(3, row);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static int countGetSport(int sport){
        int count=0;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("select DISTINCT * from product where sport = ? GROUP BY Name, Color");
            stmt.setInt(1, sport);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                count++;
            }
        }catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }

    public static List<Product> getAllCategoryPaging(int category, int page, int row){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product where category=? GROUP BY Name, Color LIMIT ?, ?");
            stmt.setInt(1, category);
            stmt.setInt(2, (page-1)*row);
            stmt.setInt(3, row);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static int countGetCategory(int category){
        int count=0;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("select DISTINCT * from product where category = ? GROUP BY Name, Color");
            stmt.setInt(1, category);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                count++;
            }
        }catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }

    public static List<Product> getAllGenderPaging(int gender, int page, int row){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product where gender=? GROUP BY Name, Color LIMIT ?, ?");
            stmt.setInt(1, gender);
            stmt.setInt(2, (page-1)*row);
            stmt.setInt(3, row);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static int countGetGender(int gender){
        int count=0;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("select DISTINCT * from product where gender = ? GROUP BY Name, Color");
            stmt.setInt(1, gender);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                count++;
            }
        }catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }

    public static List<Product> getAllNewestPaging(int page, int row){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product GROUP BY Name, Color ORDER BY ImportedDate DESC LIMIT ?, ?");
            stmt.setInt(1, (page-1)*row);
            stmt.setInt(2, row);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static int countNewest (){
        int count=0;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("select DISTINCT * from product GROUP BY Name, Color ORDER BY ImportedDate DESC");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                count++;
            }
        }catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }

    public static List<Product> getMostViewPaging(int page, int row){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product GROUP BY Name, Color ORDER BY View DESC LIMIT ?, ?");
            stmt.setInt(1, (page-1)*row);
            stmt.setInt(2, row);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static int countMostView (){
        int count=0;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("select DISTINCT * from product GROUP BY Name, Color ORDER BY View DESC");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                count++;
            }
        }catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }

    public static void addView(int view, int id){
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("UPDATE product set view=? WHERE ID=?");
            stmt.setInt(1, view+1);
            stmt.setInt(2, id);
            stmt.executeUpdate();
            if (conn != null) {
                conn.close();
                conn = null;
            }
            stmt.close();
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
    }

    public static Integer countFinding (String search){
        PreparedStatement sql = null;
        Connection connection = null;
        int result = 0;
        try{
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoe_database", "root", "");
            sql = connection.prepareStatement("select * from product where name=? GROUP BY Name, Color");
            sql.setString(1, search);
            ResultSet rs = sql.executeQuery();
            while(rs.next()){
                result++;
            }
            rs.close();
            sql.close();
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("Can't connect to database");
        }
        return result;
    }

    public static List<Product> findingPaging (String search, int page, int row){
        PreparedStatement sql = null;
        Connection connection = null;
        List<Product> list = new ArrayList<Product>();
        try{
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoe_database", "root", "");
            sql = connection.prepareStatement("select DISTINCT * from product where name like ? GROUP BY name, color limit ?, ?");
            sql.setString(1, "%"+search+"%");
            sql.setInt(2, (page - 1) * row);
            sql.setInt(3, row);
            ResultSet rs = sql.executeQuery();
            while (rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            rs.close();
            sql.close();
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("Can't connect to database");
        }
        return list;
    }

    public static Product getSizeProduct (String name, int size, int color){
        Product product = new Product();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select * from product where name=? and size=? and color=?");
            stmt.setString(1, name);
            stmt.setInt(2, size);
            stmt.setInt(3, color);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return product;
    }

    public static boolean Insert (Product product){
        boolean check=true;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("INSERT INTO product(Name, Category, Sport, Gender, Color, Size, Quantity, Price, Status, Image) VALUES (?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1, product.getM_Name());
            stmt.setInt(2, product.getM_Category());
            stmt.setInt(3, product.getM_Sport());
            stmt.setInt(4, product.getM_Gender());
            stmt.setInt(5, product.getM_Color());
            stmt.setInt(6, product.getM_Size());
            stmt.setInt(7, product.getM_Quantity());
            stmt.setDouble(8, product.getM_Price());
            stmt.setInt(9, product.getM_Status());
            stmt.setString(10, product.getM_Image());
            stmt.executeUpdate();
            stmt.close();
            if (conn != null) {
                conn.close();
                conn = null;
                check=false;
            }
            stmt.close();
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return check;
    }

    public static boolean Edit (Product product){
        boolean check=true;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            if(product.getM_Image().equals("") || product.getM_Image() == null){
                stmt = conn.prepareStatement("UPDATE product SET Name=?, Category=?, Sport=?, Gender=?, Color=?, Size=?, Quantity=?, Price=?, Status=? where ID=?");
                stmt.setInt(10, product.getM_ID());
            } else {
                stmt = conn.prepareStatement("UPDATE product SET Name=?, Category=?, Sport=?, Gender=?, Color=?, Size=?, Quantity=?, Price=?, Status=?, Image=? where ID=?");
                stmt.setString(10, product.getM_Image());
                stmt.setInt(11, product.getM_ID());
            }
            stmt.setString(1, product.getM_Name());
            stmt.setInt(2, product.getM_Category());
            stmt.setInt(3, product.getM_Sport());
            stmt.setInt(4, product.getM_Gender());
            stmt.setInt(5, product.getM_Color());
            stmt.setInt(6, product.getM_Size());
            stmt.setInt(7, product.getM_Quantity());
            stmt.setDouble(8, product.getM_Price());
            stmt.setInt(9, product.getM_Status());
            stmt.executeUpdate();
            stmt.close();
            if (conn != null) {
                conn.close();
                conn = null;
                check=false;
            }
            stmt.close();
        } catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return check;
    }

    public static boolean Delete (String Name, int Color, int Gender, int Sport){
        boolean check = true;
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        Connection connection;
        PreparedStatement stmt = null;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("delete from product where Name=? and Color=? and Gender=? and Sport=?");
            stmt.setString(1, Name);
            stmt.setInt(2, Color);
            stmt.setInt(3, Gender);
            stmt.setInt(4, Sport);
            stmt.executeUpdate();
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
            check = false;
        }
        return check;
    }

    public static List<Product> getAllSizePaging (int page, int row){
        List<Product> list = new ArrayList<Product>();
        String connectionURL = "jdbc:mysql://localhost:3306/shoe_database";
        String dbUser = "root";
        String dbPassword = "";
        PreparedStatement stmt = null;
        Connection connection;
        try{
            connection = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = connection.prepareStatement("select DISTINCT * from product LIMIT ?, ?");
            stmt.setInt(1, (page - 1) * row);
            stmt.setInt(2, row);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setM_ID(rs.getInt("ID"));
                product.setM_Name(rs.getString("Name"));
                product.setM_Category(rs.getInt("Category"));
                product.setM_Sport(rs.getInt("Sport"));
                product.setM_Gender(rs.getInt("Gender"));
                product.setM_Color(rs.getInt("Color"));
                product.setM_Size(rs.getInt("Size"));
                product.setM_Quantity(rs.getInt("Quantity"));
                product.setM_Price(rs.getDouble("Price"));
                product.setM_ImportedDate(rs.getDate("ImportedDate"));
                product.setM_Status(rs.getInt("Status"));
                product.setM_View(rs.getInt("View"));
                product.setM_Image(rs.getString("Image"));
                list.add(product);
            }
            if(connection != null){
                connection.close();
                connection = null;
            }
        }
        catch (SQLException sqle){
            System.out.println("SQL Exception thrown: "+ sqle);
        }
        return list;
    }

    public static int countGetAllSize(){
        int count=0;
        String database = "shoe_database";
        String connectionURL = "jdbc:mysql://localhost:3306/" + database;
        String dbUser = "root";
        String dbPassword = "";
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DriverManager.getConnection(connectionURL, dbUser, dbPassword);
            stmt = conn.prepareStatement("select DISTINCT * from product ");
            ResultSet rs = stmt.executeQuery();
            while(rs.next()) {
                count++;
            }
        }catch (SQLException sqle) {
            System.out.println(" SQL Exception thrown: " + sqle);
        }
        return count;
    }
}
