<jsp:include page="../include/header.jsp" />

<body>


<div class="container"
     style="width: 1145px; margin-top: 20px; margin-bottom: 180px;">
    <div ng-app="myapp" ng-controller="myController"
         style="margin-bottom: 30px">
        <div ng-init="getCart(${cartId})">
            <br> List of Products Purchased
            <div>

                <a class="btn btn-danger pull-left" ng-click="clearCart()"
                   style="margin-top: 15px; margin-left: 20px"> <span
                        class="glyphicon glyphicon-remove-sign"> </span>Clear Cart
                </a>
            </div>
            <div>
                <c:url value="/order/${cartId}" var="url1"></c:url>
                <a href="${url1}" class="btn btn-danger pull-left"
                   style="margin-top: 15px; margin-left: 20px"> <span
                        class="glyphicon glyphicon-shipping-cart"> </span>Check Out
                </a>
            </div>
            <table class="table table-hover" id="productList">
                <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total Price</th>
                </tr>
                </thead>
                <tbody>
                <tr ng-repeat="cart in carts.cartItem">
                    <td>{{cart.product.productName}}</td>
                    <td>{{cart.quality}}</td>
                    <td>{{cart.product.productPrice}}</td>
                    <td>{{cart.price}}</td>
                    <td><a href="#" class="btn btn-danger"
                           ng-click="removeFromCart(cart.cartItemId)"
                           style="margin-top: 0px;"><span
                            class="glyphicon glyphicon-trash"></span>remove</a></td>
                </tbody>
            </table>
            Grand Total Price: {{calculateGrandTotal()}}
        </div>
        <c:url value="/getAllProducts" var="url"></c:url>
        <a href="${url}" class="btn btn-default" style="margin-left: 20px">Continue
            Shopping</a>
    </div>
</div>

<%@ include file="footer.jsp"%>
</body>
</html>

<jsp:include page="../include/footer.jsp" />