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
public class User {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    @Column(nullable=false)
    private String f_name, l_name, address, phone, email, username, password;
    @ManyToOne(targetEntity = City.class)
    @JoinColumn(name = "city_id", foreignKey=@ForeignKey(name="city_fk"))
    private City city;

    public User() {
    }

    public User(String f_name, String l_name, String address, String phone, String email, String username, String password, City city) {
        this.f_name = f_name;
        this.l_name = l_name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.username = username;
        this.password = password;
        this.city = city;
    }

    public User(int id, String f_name, String l_name, String address, String phone, String email, String username, String password, City city) {
        this.id = id;
        this.f_name = f_name;
        this.l_name = l_name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.username = username;
        this.password = password;
        this.city = city;
    }

    public int getId() {
        return id;
    }

    public String getF_name() {
        return f_name;
    }

    public String getL_name() {
        return l_name;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public City getCity() {
        return city;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setCity(City city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", f_name=" + f_name + ", l_name=" + l_name + ", address=" + address + ", phone=" + phone + ", email=" + email + ", username=" + username + ", password=" + password + ", city=" + city + '}';
    }
    
     
}
