# webstore_1.1

this is a full stack project <br/>

angular + material ui on the front<br/>
nodeJs - with jwt, crypto sha512 on passwords middlware<br/>
<br/>
his is a portfolio driven project shop<br/>
users can pick up products to cart and purchase them.<br/>

this project is under review...<br/>
will soon deploy this to Digital Ocean.<br/>

## Description	Endpoint
/api/products	<br/>
get all products	https://angular.johnmogi.com/api/products<br/>
get one product	https://angular.johnmogi.com/api/products/item/:id<br/>
get all categories	https://angular.johnmogi.com/api/products/cats<br/>
/api/orders	<br/>
get all orders	https://angular.johnmogi.com/api/orders<br/>
get one order	https://angular.johnmogi.com/api/orders/item/:id<br/>
get one order from user	https://angular.johnmogi.com/api/orders/user/:user<br/>
post order	localhost:3000/api/orders/new<br/>
	<br/>
/api/cart	<br/>
get all items from user id	localhost:3000/api/cart/user/:id<br/>
post new cart	localhost:3000/api/cart<br/>
get old cart	/history/:cartID<br/>
post add product	/add-item/:cartID<br/>
delete remove product	/drop<br/>
delete remove product from a cart	/drop/:cartID/:productID<br/>
/api/auth	<br/>
get count user visits	/visit-counter<br/>
get check user id and password	/check-user<br/>
post add one user	/register<br/>
post login user	/login<br/>
patch (count up user visits)	/up-visit/:id<br/>
get login user after refresh	/keep-user<br/>
/api/admin	<br/>
post add one image	/add-image<br/>
post one product	/add-product<br/>
patch update one product	/update-item<br/>
