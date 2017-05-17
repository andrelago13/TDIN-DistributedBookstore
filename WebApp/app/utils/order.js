var OrderState = {
    WAITING_DISPATCH: 1,
    SHOULD_DISPATCH: 2,
    DISPATCHED: 3,
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

module.exports = {
    Order: Order,
    OrderState: OrderState
}