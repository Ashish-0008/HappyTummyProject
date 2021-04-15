package com.learn.happytummy.dao;

import com.learn.happytummy.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;




/**
 *
 * @author Aayush
 */
public class UserDao2 {
    private SessionFactory factory;
    public UserDao2(SessionFactory factory){
    this.factory=factory;
}



public User getUserbyEmailandPassword(String Email){
       
        
        User user=null;
        
        {
         try {
            
            String query ="from User where userEmail=:e";
      Session session =this.factory.openSession();
     Query q = session.createQuery(query);
      q.setParameter("e", Email);
      user=(User) q.uniqueResult();
      
      session.close();
         
         } catch (Exception e) {
            e.printStackTrace();
        }
       
       return user;
        }
}
}