class Book {
    constructor(id, isbn, title, author, price) {
        this.id = id;
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.price = price;
    }
}

module.exports = {
    Book: Book
}