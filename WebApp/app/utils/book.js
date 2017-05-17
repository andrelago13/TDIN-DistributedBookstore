class Book {
    constructor(id, isbn, title, author, price) {
        this.id = id;
        this.isbn = isbn;
        this.title = title;
        this.author = author;
        this.price = price;
    }
}

function getBooks(callback) {
    const request = require('request');

    request.get({
        url: config.bookstore_books_address
    }, function (err, httpResponse, body) {
        var books = [];
        var books_json = JSON.parse(httpResponse.body);

        for (var i = 0; i < books_json.length; ++i) {
            var book_json = books_json[i];
            books.push(new Book(book_json.ID, book_json.ISBN, book_json.name, book_json.author, book_json.price));
        }
        callback(books);
    })
}

module.exports = {
    Book: Book,
    getBooks: getBooks
}