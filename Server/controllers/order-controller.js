// INSERT INTO `clientOrder` (`orderID`, `clientID`, `cartID`, `subTotal`, `shippingCity`, `shippingStreet`, `shippingDate`, `orderTime`, `paymentDigits`) VALUES (NULL, '23', '1', '1000', 'Barcelona', 'square 39', '2020-06-17', '2020-06-29', '4580');

const express = require('express');
const router = express.Router();
const sendError = require("../helpers/send-error");
const orderLogic = require('../business-logic/order-logic');

//(get) http://localhost:3000/api/orders //? get all orders

router.get('/', async (request, response) => {
    try {
        const orders = await orderLogic.getAllOrders();
        response.json(orders);
    } catch (error) {
        sendError(response, error);
    }
});

//(get) http://localhost:3000/api/orders/item/:id //? get one order
router.get('/item/:id', async (request, response) => {
    const id = +request.params.id
    try {
        const order = await orderLogic.getOneOrder(id);
        response.json(order);
    } catch (error) {
        sendError(response, error);
    }
});

//(get) http://localhost:3000/api/orders/user/:user // get one (last) order of a specific user
router.get('/user/:user', async (request, response) => {
    const user = +request.params.user
    try {
        const order = await orderLogic.getOneOrderFromUser(user);
        response.json(order);
    } catch (error) {
        sendError(response, error);
    }
});

// POST  localhost:3000/api/orders/new
router.post('/new/', async (request, response) => {

    const time = new Date();
    const year = time.getFullYear();
    const month = time.getMonth() + 1;
    const day = time.getDate();
    const hours = time.getHours();
    const minutes = time.getMinutes();
    const seconds = time.getSeconds();
    const nowTime = `${year}-${month}-${day}:${hours}:${minutes}:${seconds}`;

    try {
        const order = request.body.form;
        order.shippingDate = request.body.shipTime
        order.orderTime = nowTime.toString();
        const addedOrder = await orderLogic.addOrder(order);
        response.json(addedOrder);
    } catch (error) {
        sendError(response, error);
    }
});

module.exports = router;