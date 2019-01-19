package model;
// @author Milos Boskovic

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Item {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    @Column(nullable=false)
    private String name; 
    @Column(nullable=false)
    private double price;
    @Column(nullable=false)
    private String description;
    @ManyToOne(targetEntity = Category.class)
    @JoinColumn(name="category_id", foreignKey = @ForeignKey(name="category_fk"))        
    Category category;
    @ManyToOne(targetEntity = Manufacturer.class)
    @JoinColumn(name="manufacturer_id", foreignKey = @ForeignKey(name="manufacturer_fk"))  
    Manufacturer manufacturer;

    public Item() {
    }

    public Item(String name, double price, String description, Category category, Manufacturer manufacturer) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.category = category;
        this.manufacturer = manufacturer;
    }

    public Item(int id, String name, double price, String description, Category category, Manufacturer manufacturer) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.category = category;
        this.manufacturer = manufacturer;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }

    public Category getCategory() {
        return category;
    }

    public Manufacturer getManufacturer() {
        return manufacturer;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public void setManufacturer(Manufacturer manufacturer) {
        this.manufacturer = manufacturer;
    }

    @Override
    public String toString() {
        return "Item{" + "id=" + id + ", name=" + name + ", price=" + price + ", description=" + description + ", category=" + category + ", manufacturer=" + manufacturer + '}';
    }
    
    
    
    
}
