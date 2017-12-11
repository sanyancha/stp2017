package by.bsuir.myappspringboot.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user_paynment")
public class UserPaynment {
    private int id;
    private User user;
    private String cardNo;
    private String operation;
    private Double value;
    private Date operDate;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }

    @Column(name = "card_no")
    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    @Column(name = "oper_date")
    public Date getOperDate() {
        return operDate;
    }

    public void setOperDate(Date operDate) {
        this.operDate = operDate;
    }

    @ManyToOne
    @JoinColumn(name = "user_id")
    public User getUser() {
        return user;
    }

    @Override
    public String toString() {
        return "UserPaynment{" +
                "id=" + id +
                ", user=" + user.getId() +
                ", cardNo='" + cardNo + '\'' +
                ", operation='" + operation + '\'' +
                ", value=" + value +
                ", operDate=" + operDate +
                '}';
    }
}
