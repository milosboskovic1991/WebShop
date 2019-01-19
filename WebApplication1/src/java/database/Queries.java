package database;
// @author Milos Boskovic

import java.util.ArrayList;
import java.util.List;

import model.Category;
import model.City;
import model.Item;
import model.Manufacturer;
import model.Transaction;
import model.User;
import org.hibernate.Query;
import org.hibernate.Session;


public class Queries {
    public static ArrayList<Category> getAllCategories(){
        ArrayList<Category> categories;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from Category";
        Query query = s.createQuery(hql);
        categories = (ArrayList<Category>) query.list();
        
        s.getTransaction().commit();
        s.close();
        return categories;
    }
    
    public static ArrayList<User> getAllUsers(){
        ArrayList<User> users;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from User";
        Query query = s.createQuery(hql);
        users = (ArrayList<User>) query.list();
        
        s.getTransaction().commit();
        s.close();
        return users;
    }
    
    public static ArrayList<Transaction> getAllTransactions(){
        ArrayList<Transaction> transactiones;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from Transaction";
        Query query = s.createQuery(hql);
        transactiones = (ArrayList<Transaction>) query.list();
        
        s.getTransaction().commit();
        s.close();
        return transactiones;
    }
    
    public static String getCategoryName(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "select name from Category where id="+id;
        Query query = s.createQuery(hql);
        Object obj = query.uniqueResult();
        String name = (String) obj;
        s.getTransaction().commit();
        
        s.close();
        return name;
    }
    
    public static ArrayList<City> getAllCities(){
        ArrayList<City> cities;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
  
        String hql = "from City";
        Query query = s.createQuery(hql);
        cities = (ArrayList<City>) query.list();
        
        s.getTransaction().commit();
        s.close();
        return cities;
    }
    public static int getUserId(String username){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "select id from User where username='"+username+"'";
        Query query = s.createQuery(hql);
        Object obj = query.uniqueResult();
        int id = (Integer) obj;
        s.getTransaction().commit();
        
        s.close();
        return id;
    }
    
    
    
    public static ArrayList<Manufacturer> getAllManufacturers(){
        ArrayList<Manufacturer> manufactuers;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
  
        String hql = "from Manufacturer";
        Query query = s.createQuery(hql);
        manufactuers = (ArrayList<Manufacturer>) query.list();
        
        s.getTransaction().commit();
        s.close();
        return manufactuers;
    }
    public static ArrayList<Item> getItemsById(int id){
        ArrayList<Item> items;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from Item where category_id="+id;
        Query query = s.createQuery(hql);
        items = (ArrayList<Item>) query.list();
        
        s.getTransaction().commit();
        s.close();
        return items;
    }
    
    public static ArrayList<Item> getAllItems(){
        ArrayList<Item> items;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from Item";
        Query query = s.createQuery(hql);
        items = (ArrayList<Item>) query.list();
        
        s.getTransaction().commit();
        s.close();
        return items;
    }
    
    public static City getCity(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from City where id="+id;
        Query query = s.createQuery(hql);
        Object obj = query.uniqueResult();
        City city = (City) obj;
        s.getTransaction().commit();
        s.close();
        return city;
    }
    
    public static void addUser(User u){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(u);
        s.getTransaction().commit();
        s.close();
    }
    
    public static void deleteUser(User u){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(u);
        s.getTransaction().commit();
        s.close();
    }
    
    public static boolean userExists(User u){
        ArrayList<User> user;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        boolean exists;
        String hql = "from User where username='"+u.getUsername()+"'";
        Query query = s.createQuery(hql);
        user = (ArrayList<User>) query.list();
                
        if(user.isEmpty()){
            exists = false;
        }else{
            exists = true;
        }
        
        s.getTransaction().commit();
        s.close();
        return exists;
    }
    
    public static boolean isUserValid(String username, String password){
        ArrayList<User> user;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        boolean isValid;
        String hql = "from User where username='"+username+"' and password='"+password+"'";
        Query query = s.createQuery(hql);
        user = (ArrayList<User>) query.list();
        
        if(user.isEmpty()){
            isValid = false;
        }else{
            isValid = true;
        }
        
        s.getTransaction().commit();
        s.close();
        return isValid;
    }
    
    public static void addCategory(Category c){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(c);
        s.getTransaction().commit();
        s.close();
    }
    
    public static void deleteCategory(Category c){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(c);
        s.getTransaction().commit();
        s.close();
    }
    
    public static void addManufacturer(Manufacturer m){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(m);
        s.getTransaction().commit();
        s.close();
    }
    
    public static void deleteManufacturer(Manufacturer m){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(m);
        s.getTransaction().commit();
        s.close();
    }
    
    public static User getUser(String username){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from User where username='"+username+"'";
        Query query = s.createQuery(hql);
        Object obj = query.uniqueResult();
        User user = (User) obj;
        
        s.getTransaction().commit();
        s.close();
        return user;
    }
    public static Item getItem(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from Item where id="+id;
        Query query = s.createQuery(hql);
        Object obj = query.uniqueResult();
        Item i = (Item) obj;
        
        s.getTransaction().commit();
        s.close();
        return i;
    }
    
    public static void addTransaction(Transaction t){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(t);
        s.getTransaction().commit();
        s.close();
    }
    
    public static void addItem(Item i){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(i);
        s.getTransaction().commit();
        s.close();
    }
    
    public static void deleteItem(Item i){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(i);
        s.getTransaction().commit();
        s.close();
    }
    
    public static Category getCategory(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from Category where id="+id;
        Query query = s.createQuery(hql);
        Object obj = query.uniqueResult();
        Category cat = (Category) obj;
        
        s.getTransaction().commit();
        s.close();
        return cat;
    }
    
    public static Manufacturer getManufacturer(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        String hql = "from Manufacturer where id="+id;
        Query query = s.createQuery(hql);
        Object obj = query.uniqueResult();
        Manufacturer man = (Manufacturer) obj;
        
        s.getTransaction().commit();
        s.close();
        return man;
    }
    
    public static void updateItem(Item i){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(i);
        s.getTransaction().commit();
        s.close();
    }
    
    public static ArrayList<Transaction> getTransactionByUser(int id){
        ArrayList<Transaction> transactions;
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        
        String hql = "from Transaction where user_id="+id+" and approved='yes'";
        Query query = s.createQuery(hql);
        transactions = (ArrayList<Transaction>) query.list();
        
        s.getTransaction().commit();
        s.close();
        return transactions;
    }
    
    public static Transaction getTransactionId(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        
        String hql = "from Transaction where id="+id;
        Query query = s.createQuery(hql);
        Object obj = query.uniqueResult();
        Transaction t = (Transaction)obj;
        
        s.getTransaction().commit();
        s.close();
        return t;
    }
    
    public static void updateTransaction(Transaction t){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        
        s.update(t);
        
        s.getTransaction().commit();
        s.close();
    }
}
