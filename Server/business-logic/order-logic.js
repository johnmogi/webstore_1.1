const dal = require("../data-access-layer/dal");

async function getAllOrders() {
    const sql = `SELECT * FROM clientOrder`;
    const orders = await dal.executeAsync(sql);
    return orders;
}
async function getOneOrder(id) {
    const sql = `SELECT * FROM clientOrder where orderID = ${id}`;
    const order = await dal.executeAsync(sql);
    return order;
}
async function getOneOrderFromUser(user) {
    const sql = `SELECT * FROM clientOrder where userID = ${user}`;
    const order = await dal.executeAsync(sql);
    return order;
}
async function addOrder(order) {
    const sql = `INSERT INTO clientOrder ( clientID, cartID, subTotal, shippingCity, shippingStreet, shippingDate, orderTime, paymentDigits) VALUES ( ${order.clientID}, ${order.cartID}, ${order.subTotal}, '${order.shippingCity}', '${order.shippingStreet}', '${order.shippingDate}', '${order.orderTime}', ${order.paymentDigits})`;
   const newCart = await dal.executeAsync(sql);
    return newCart;
}

module.exports = {
    getAllOrders,
    getOneOrder,
    getOneOrderFromUser,
    addOrder
}
