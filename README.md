# webstore_1.1

this is a full stack project

angular + material ui on the front
nodeJs - with jwt, crypto sha512 on passwords middlware

his is a portfolio driven project shop
users can pick up products to cart and purchase them.

this project is under review...
will soon deploy this to Digital Ocean.

## Description	Endpoint
/api/products	
get all products	http://localhost:3000/api/products
get one product	http://localhost:3000/api/products/item/:id
get all categories	http://localhost:3000/api/products/cats
/api/orders	
get all orders	http://localhost:3000/api/orders
get one order	http://localhost:3000/api/orders/item/:id
get one order from user	http://localhost:3000/api/orders/user/:user
post order	localhost:3000/api/orders/new
	
/api/cart	
get all items from user id	localhost:3000/api/cart/user/:id
post new cart	localhost:3000/api/cart
get old cart	/history/:cartID
post add product	/add-item/:cartID
delete remove product	/drop
delete remove product from a cart	/drop/:cartID/:productID
/api/auth	
get count user visits	/visit-counter
get check user id and password	/check-user
post add one user	/register
post login user	/login
patch (count up user visits)	/up-visit/:id
get login user after refresh	/keep-user
/api/admin	
post add one image	/add-image
post one product	/add-product
patch update one product	/update-item
