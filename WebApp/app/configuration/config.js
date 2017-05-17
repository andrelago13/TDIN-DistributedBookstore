var app_title = "Distributed Bookstore";

var api_host = "http://localhost";
var api_port = 8080;

var bookstore_address = api_host + ":" + api_port + "/bookstore";
var bookstore_users_address = bookstore_address + "/users";
var bookstore_users_login_address = bookstore_users_address + "/login";
var bookstore_users_register_address = bookstore_users_address + "/register";
var bookstore_orders_address = bookstore_address + "/orders";

module.exports={
	"app_title"							:	app_title,

	"api_host"							:	api_host,
	"api_port"							:	api_port,

	"bookstore_address"					:	bookstore_address,
	"bookstore_users_address"			:	bookstore_users_address,
	"bookstore_users_login_address"		:	bookstore_users_login_address,
	"bookstore_users_register_address"	:	bookstore_users_register_address,
	"bookstore_orders_address"			:	bookstore_orders_address
}