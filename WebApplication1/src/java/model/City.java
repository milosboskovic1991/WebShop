package model;
// @author Milos Boskovic

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class City {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    @Column(nullable = false, name="name")
    private String name;

    public City() {
    }

    public City(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public City(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "City{" + "id=" + id + ", name=" + name + '}';
    }

    
    
    
    
    

    
    
    
    
}
