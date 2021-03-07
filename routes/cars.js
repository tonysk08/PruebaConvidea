var express = require('express');
const { render } = require('../app');
var router = express.Router();

const CarController = require('../controllers/CarsController');

/* GET lista todos los carros disponibles*/
router.get('/', CarController.list);
router.get('/admincars', CarController.adminCars);
router.get('/delete/:id', CarController.deleteCar);
router.get('/add', CarController.addCar);
router.post('/save', CarController.saveCar);


module.exports = router;
