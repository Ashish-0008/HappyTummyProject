/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.learn.happytummy.dao;

import com.learn.happytummy.entities.Category;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


public class categoryDao {
    private SessionFactory factory;

    public categoryDao(SessionFactory factory) {
        this.factory = factory;
    }

    public int saveCategory(Category cat){
        
        
        Session openSession = this.factory.openSession();
       Transaction tx= openSession.beginTransaction();
        int catId=(int)openSession.save(cat);
       tx.commit();
       openSession.close();
       return catId ;
    }

public List<Category> getCategorys(){
    Session s = this.factory.openSession();
    Query q = s.createQuery("from Category");
    List<Category> list =q.list();
    return list;
}

public Category getCategoryById(int cid)
{  Category cat =null;
    try{
        Session session = this.factory.openSession();
       cat =session.get(Category.class, cid);
       session.close();
    }
    catch(Exception e){
        e.printStackTrace();
    }
    return cat;
}
}


