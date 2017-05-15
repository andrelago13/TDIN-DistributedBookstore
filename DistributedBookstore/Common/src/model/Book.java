package model;

import org.json.JSONObject;

/**
 * Created by joaos on 15/05/2017.
 */
public class Book {
    public final static String ID_KEY = "ID";
    public final static String ISBN_KEY = "ISBN";
    public final static String NAME_KEY = "name";
    public final static String AUTHOR_KEY = "author";
    public final static String PRICE_KEY = "price";

    public final static String ID_COLUMN = "id";
    public final static String ISBN_COLUMN = "isbn";
    public final static String NAME_COLUMN = "name";
    public final static String AUTHOR_COLUMN = "author";
    public final static String PRICE_COLUMN = "price";

    private int ID;
    private String isbn;
    private String name;
    private String author;
    private double price;

    public Book(int ID, String isbn, String name, String author, double price) {
        this.ID = ID;
        this.isbn = isbn;
        this.name = name;
        this.author = author;
        this.price = price;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public JSONObject toJSON() {
        JSONObject result = new JSONObject();

        result.put(ID_KEY, ID);
        result.put(ISBN_KEY, isbn);
        result.put(NAME_KEY, name);
        result.put(AUTHOR_KEY, author);
        result.put(PRICE_KEY, price);

        return result;
    }
}
