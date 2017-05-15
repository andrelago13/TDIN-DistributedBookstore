package model;

/**
 * Created by joaos on 15/05/2017.
 */
public class Book {

    private int ID;
    private String isbn;
    private String name;
    private String author;

    public Book(int ID, String isbn, String name, String author) {
        this.ID = ID;
        this.isbn = isbn;
        this.name = name;
        this.author = author;
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
}
