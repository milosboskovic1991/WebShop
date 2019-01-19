package model;
// @author Milos Boskovic

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Transaction {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    @Column(nullable=false)
    Date date;
    @Column(nullable=false)
    String approved;
    @ManyToOne(targetEntity = User.class)
    @JoinColumn(name="user_id", foreignKey=@ForeignKey(name="user_fk"))
    User user;
    @ManyToOne(targetEntity = Item.class)
    @JoinColumn(name="item_id", foreignKey=@ForeignKey(name="item_fk"))
    Item item;

    public Transaction() {
    }

    public Transaction(String approved, User user, Item item) {
        this.approved = approved;
        this.user = user;
        this.item = item;
    }

    public Transaction(Date date, String approved, User user, Item item) {
        this.date = date;
        this.approved = approved;
        this.user = user;
        this.item = item;
    }

    public Transaction(int id, Date date, String approved, User user, Item item) {
        this.id = id;
        this.date = date;
        this.approved = approved;
        this.user = user;
        this.item = item;
    }

    public String getApprove() {
        return approved;
    }

    public int getId() {
        return id;
    }

    public Date getDate() {
        return date;
    }

    public User getUser() {
        return user;
    }

    public Item getItem() {
        return item;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public void setApprove(String approve) {
        this.approved = approve;
    }

    @Override
    public String toString() {
        return "Transaction{" + "id=" + id + ", date=" + date + ", approved=" + approved + ", user=" + user + ", item=" + item + '}';
    }
    
    
    
    
    
}
