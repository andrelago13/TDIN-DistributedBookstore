var config = require('./../configuration/config');
var session = require('express-session');

var OrderState = {
    WAITING_DISPATCH: 0,
    SHOULD_DISPATCH: 1,
    DISPATCHED: 2,
}

class Order {
    constructor(id, book_title, quantity, price, status, date) {
        this.id = id;
        this.book_title = book_title;
        this.quantity = quantity;
        this.price = price;

        this.status = status;
        this.date = date ? date : null;
        switch (status) {
            case OrderState.WAITING_DISPATCH:
                this.date = null;
                this.status_message = 'Awaiting Expedition';
                break;
            case OrderState.SHOULD_DISPATCH:
                this.status_message = 'Will Be Dispatched';
                break;
            case OrderState.DISPATCHED:
                this.status_message = 'Dispatched';
                break;
        }
    }
}

function getOrders(callback) {
    const request = require('request');

    request.get({
        url: config.bookstore_users_address + "/" + session.user_id + "/orders"
    }, function (err, httpResponse, body) {
        var orders = [];
        var completed_orders = [];
        var orders_json = JSON.parse(httpResponse.body).orders;

        for (var i = 0; i < orders_json.length; ++i) {
            var order_json = orders_json[i];
            var order = new Order(order_json.orderID, order_json.bookID, order_json.quantity, 20, order_json.state, order_json.orderDate);
            if (order.status === 2) {
                completed_orders.push(order);
            } else {
                orders.push(order);
            }
        }
        callback(orders, completed_orders);
    })
}

module.exports = {
    Order: Order,
    OrderState: OrderState,
    getOrders: getOrders
}