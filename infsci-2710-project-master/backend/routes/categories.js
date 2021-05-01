const express = require('express');
const categoriesRouter = express.Router();
const Category = require('../models/Category');

categoriesRouter.get('/', (req, res) => {
	Category.getAll(null, function (err, response) {
		if (err) {
			return res.status(500).send(err);
		}
		return res.status(200).send(response);
	});
});

categoriesRouter.get('/id/:id', (req, res) => {

	const catId = req.params.id;
	
	Category.getCategoryById(catId, function (err, response) {
		if (err) {
			return res.status(500).send(err);
		}
		return res.status(200).send(response);
	});
});

module.exports = categoriesRouter;