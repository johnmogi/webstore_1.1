const dal = require("../data-access-layer/dal");
 
async function addCart(cart) {
    const sql = `INSERT INTO cart VALUES (DEFAULT,  ?, ?)`;
    const newCart = await dal.executeAsync(sql, [cart.userID, cart.cartTime]);
    return newCart;
}
//find cart by user
async function getUserCart(userID) {
    const getCart = `SELECT cartID,  DATE_FORMAT(cartTime, "%m/%d/%Y, %h:%m:%s") as cartTime FROM cart WHERE userID = ${userID}`;
    const userCart = await dal.executeAsync(getCart)
    return (userCart);
}
//old cart - get old items from cart
async function historyCart(cart) {
    const sql ="SELECT * FROM cartItem c INNER JOIN products p WHERE cartID = ? AND c.productID = p.productID"
    const oldCart = await dal.executeAsync(sql, [cart]);
    return oldCart;
}
// maybe convert this validation to update instead?
async function verifyDuplicate(product) {
    const sql = `SELECT * FROM cartItem WHERE cartID = ? AND productID = ?`;
    const getCart = await dal.executeAsync(sql, [product.cartID, product.productID]);
    return getCart;
}

async function AddItemToCart(cartID, productID, amount) {
    const findPrice = `SELECT price FROM products WHERE productID = ${productID}`;
    const resPrice = await dal.executeAsync(findPrice);
    const newAmount = amount
    const newPrice = resPrice[0].price
    // amount * price
    const sql = `INSERT INTO cartItem (productID, amount, totalPrice, cartID) VALUES ( ${productID}, ${newAmount}, ${newPrice}, ${cartID} )`;
    const newCart = await dal.executeAsync(sql);
  return newCart;
}

async function deleteItemFromCart(cartID, productID) {
    const sql = `DELETE FROM cartItem WHERE cartID = ${cartID} AND productID = ${productID}`;
    const newCart = await dal.executeAsync(sql);
    return newCart;
}

async function deleteCart(cart) {
    const sql = `DELETE FROM cartItem WHERE cartID = ${cart.cartID}`;
    const newCart = await dal.executeAsync(sql);
    return newCart;
}

module.exports = {
    addCart,
    getUserCart,
    historyCart,
    verifyDuplicate,
    deleteCart,
    AddItemToCart,
    deleteItemFromCart
}