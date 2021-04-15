
package com.learn.happytummy.entities;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Restaurant {
        @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int restaurantId;
    private String restaurantTitle;
    private String restaurantDescription;

    
    @OneToMany(mappedBy ="restaurantID")
    private List<Category> categorys=new ArrayList<>();
     
    @OneToMany(mappedBy ="restaurantID")
    private List<Product> product=new ArrayList<>();
     
    @OneToMany(mappedBy ="restaurantID")
    private List<Cart> cart=new ArrayList<>();
     
    
    
    public Restaurant(int restaurantId, String restaurantTitle, String restaurantDescription, List<Category> categorys,List<Product> product,List<Cart> cart) {
        this.restaurantId = restaurantId;
        this.restaurantTitle = restaurantTitle;
        this.restaurantDescription = restaurantDescription;
        this.categorys=categorys;
        this.product=product;
        this.cart =cart;
    }

    public Restaurant() {
    }

    public Restaurant(String restaurantTitle, String restaurantDescription) {
        this.restaurantTitle = restaurantTitle;
        this.restaurantDescription = restaurantDescription;
    }

    public int getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(int restaurantId) {
        this.restaurantId = restaurantId;
    }

    public String getRestaurantTitle() {
        return restaurantTitle;
    }

    public void setRestaurantTitle(String restaurantTitle) {
        this.restaurantTitle = restaurantTitle;
    }

    public String getRestaurantDescription() {
        return restaurantDescription;
    }

    public void setRestaurantDescription(String restaurantDescription) {
        this.restaurantDescription = restaurantDescription;
    }

    public List<Category> getCategorys() {
        return categorys;
    }

    public void setCategorys(List<Category> categorys) {
        this.categorys = categorys;
    }

    public List<Product> getProduct() {
        return product;
    }

    public void setProduct(List<Product> product) {
        this.product = product;
    }

    public List<Cart> getCart() {
        return cart;
    }

    public void setCart(List<Cart> cart) {
        this.cart = cart;
    }
    

    @Override
    public String toString() {
        return "Restaurant{" + "restaurantId=" + restaurantId + ", restaurantTitle=" + restaurantTitle + ", restaurantDescription=" + restaurantDescription + '}';
    }
    
}
