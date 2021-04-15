
package com.learn.happytummy.dao;

import com.learn.happytummy.entities.Restaurant;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


public class restaurantDao {
    
    
    private SessionFactory factory;

    public restaurantDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    
    public int saveRestaurant(Restaurant res)
    {
        
          Session openSession = this.factory.openSession();
       Transaction tx= openSession.beginTransaction();
        int resId=(int)openSession.save(res);
       tx.commit();
       openSession.close();
       return resId ;
    }
    
    
    public List<Restaurant> getRestaurants(){
    Session s = this.factory.openSession();
    Query q = s.createQuery("from Restaurant");
    List<Restaurant> list =q.list();
    return list;
}
    
    
    public Restaurant getRestaurantById(int resId)
{  Restaurant res =null;
    try{
        Session session = this.factory.openSession();
       res =session.get(Restaurant.class, resId);
       session.close();
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return res;
}
}
