var express = require('express');
const { render } = require('../app');
var router = express.Router();

const CarController = require('../controllers/CarsController');

/* GET lista todos los carros disponibles*/
router.get('/', CarController.list);

module.exports = router;
