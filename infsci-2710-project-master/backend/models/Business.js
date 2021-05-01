'use strict';

const sql = require('./db');

const Business = function(business) {
	this.fax = business.fax;
	this.business_name = business.businessName;
	this.website = business.website;
};

Business.createBusiness = function createBusiness (newBusiness, result) {
	sql.query('INSERT INTO Business SET ?', newBusiness, function (err, res) {
		if (err) {
			result(err, null);
		} else {
			result(null, res.insertId);
		}	
	});
}

module.exports = Business;