package com.learn.happytummy.dao;

import com.learn.happytummy.entities.Product;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;


public class productDao {

    private SessionFactory factory;

    public productDao(SessionFactory factory) {
        this.factory = factory;
    }

    public boolean saveProduct(Product product) {

        boolean f = false;
        try {

            Session openSession = this.factory.openSession();
            Transaction tx = openSession.beginTransaction();

            openSession.save(product);

            tx.commit();
            openSession.close();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
            f = false;
        }
        return f;
    }

   

    public List<Product> getAllProducts() {

        Session S = this.factory.openSession();
        
       
        Query qurery = S.createQuery("from Product");
       
        List<Product> list = qurery.list();
       
        return list;

    }

}
