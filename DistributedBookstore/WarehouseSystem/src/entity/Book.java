package entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by asl_m on 13/05/2017.
 */
@Entity
public class Book implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_no")
    private Integer bookNo;

    @Column(name = "title", length = 50)
    private String title;

    @Column(name = "unit_price")
    private Double unitPrice;

    public Integer getBookNo() {
        return bookNo;
    }

    public void setBookNo(final Integer employeeNo) {
        this.bookNo = employeeNo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Double price) {
        unitPrice = price;
    }
}