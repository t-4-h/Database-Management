'use strict';

const sql = require('./db');

const User = function(user) {
	this.first_name = user.firstName;
	this.last_name = user.lastName;
	this.password = user.password;
	this.phone = user.phone;
	this.zipcode = user.zipcode;
	this.city = user.city;
	this.state_id = user.stateId;
	this.business_id = user.businessId;
	this.email = user.email;
	this.address = user.address;
	// this.created_at = new Date();
};

User.createUser = function createUser (newUser, result) {

	sql.query('SELECT customer_id FROM Customer WHERE email = ?', newUser.email, function (err, res) {
		if (res.length === 0) {
			sql.query('INSERT INTO Customer SET ?', newUser, function (err, res) {
				if (err) {
					result(err, null);
				} else {
					result(null, res.insertId);
				}	
			});
		} else {
			result({ sqlMessage: 'A user with that email already exists.' }, null);
		}

	});
}

User.getUserByEmail = function getUserByEmail(email, result) {
	sql.query('SELECT * FROM Customer c, Business b WHERE c.email = ? AND (c.business_id = b.business_id OR c.business_id IS NULL) LIMIT 1', email, function (err, res) {
		if (err) {
			console.log(err);
			result(err, null);
			return;
		}
		console.log(res);
		result(null, res);
	});
};

User.getUserById = function getUserById(id, result) {
	sql.query('SELECT * FROM Customer c, Business b WHERE c.customer_id = ? AND (c.business_id = b.business_id OR c.business_id IS NULL) LIMIT 1', id, function (err, res) {
		if (err) {
			console.log(err);
			result(err, null);
			return;
		}
		result(null, res);
	});
};

module.exports = User;