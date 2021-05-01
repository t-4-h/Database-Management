'use strict';

const sql = require('./db');

const Cart = function(product) {
	this.customer_id = product.customer_id;
	this.product_id = product.product_id;
};


Cart.delete = function (customer_id, product_id, result) {
	sql.query('DELETE FROM ShoppingCart WHERE customer_id = ? AND product_id = ?', [customer_id, product_id], function (err, res) {
		if (err) {
			console.log('bad');
			result(err, null);
		} else {
			console.log('good');
			result(null, res.insertId);
		}	
	});
}

Cart.deleteMyItems = function deleteMyItems (customer_id, result) {
	sql.query('DELETE FROM ShoppingCart WHERE customer_id = ?', customer_id, function (err, res) {
		if (err) {
			console.log(err)
			result(err, null);
		} else {
			result(null, res.insertId);
		}	
	});
}


Cart.create = function create (newProduct, result) {
	sql.query('INSERT INTO ShoppingCart SET ?', newProduct, function (err, res) {
		if (err) {
			result(err, null);
		} else {
			result(null, res.insertId);
		}	
	});
}

Cart.getAll = function (options, result) {
	const query = `SELECT Products.* FROM ShoppingCart, Products, Customer WHERE ShoppingCart.product_id = Products.product_id AND ShoppingCart.customer_id = Customer.customer_id AND Customer.customer_id = ?`;
	sql.query(query, options.customer_id, function (err, rows) {
		if (err) {
			console.log(err);
			result(err, null);
			return;
		}
		result(null, rows);
	});
};
module.exports = Cart;