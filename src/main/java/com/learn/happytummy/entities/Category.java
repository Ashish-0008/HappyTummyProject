
package com.learn.happytummy.entities;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryId;
    private String categoryTitle;
    private String categoryDescription;
    


    @OneToMany(mappedBy ="category")
    private List<Product> products=new ArrayList<>();
        
    @OneToMany(mappedBy ="categoryID")
    private List<Cart> cart=new ArrayList<>();
        
    @ManyToOne
    private Restaurant restaurantID;
    
    public Category() {
    }

    
    public Category(String categoryTitle, List<Product> products,String categoryDescripton,Restaurant restaurantID,List<Cart> cart) {
        this.categoryTitle = categoryTitle;
        this.categoryDescription=categoryDescripton;

        this.products = products;
        this.restaurantID=restaurantID;
        this.cart =cart;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryTitle() {
        return categoryTitle;
    }

    public void setCategoryTitle(String categoryTitle) {
        this.categoryTitle = categoryTitle;
        
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }



    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public Restaurant getRestaurant() {
        return restaurantID;
    }


    public void setRestaurant(Restaurant restaurantID) {
        this.restaurantID = restaurantID;
    }

    public List<Cart> getCart() {
        return cart;
    }

    public void setCart(List<Cart> cart) {
        this.cart = cart;
    }

    public Restaurant getRestaurantID() {
        return restaurantID;
    }

    public void setRestaurantID(Restaurant restaurantID) {
        this.restaurantID = restaurantID;
    }

    @Override
    public String toString() {
        return "Category{" + "categoryId=" + categoryId + ", categoryTitle=" + categoryTitle + ", categoryDescription=" + categoryDescription + ", products=" + products +'}';
    }

   
    
}
