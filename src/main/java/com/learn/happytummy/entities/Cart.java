
package com.learn.happytummy.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Cart {
      @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cartId;
      
      
      
    @ManyToOne
    private Category categoryID;
    
    @ManyToOne
    private Restaurant restaurantID;
    
    @ManyToOne
    private Product  productID;

    public Cart(int cartId, Category categoryID, Restaurant restaurantID, Product productID) {
        this.cartId = cartId;
        this.categoryID = categoryID;
        this.restaurantID = restaurantID;
        this.productID = productID;
    }

    public Cart(Category categoryID, Restaurant restaurantID, Product productID) {
        this.categoryID = categoryID;
        this.restaurantID = restaurantID;
        this.productID = productID;
    }

    
    
    
    
    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public Category getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(Category categoryID) {
        this.categoryID = categoryID;
    }

    public Restaurant getRestaurantID() {
        return restaurantID;
    }

    public void setRestaurantID(Restaurant restaurantID) {
        this.restaurantID = restaurantID;
    }

    public Product getProductID() {
        return productID;
    }

    public void setProductID(Product productID) {
        this.productID = productID;
    }

    @Override
    public String toString() {
        return "Cart{" + "cartId=" + cartId + ", categoryID=" + categoryID + ", restaurantID=" + restaurantID + ", productID=" + productID + '}';
    }

}
