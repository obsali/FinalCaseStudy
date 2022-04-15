<jsp:include page="../include/header.jsp"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Products</title>
</head>
<body>
<div ng-app="myapp">
    <div class="container" style="width: 829px">
        <h2>Product Details</h2>
        <p>Details of the Product</p>
        <table class="table table-bordered" id="prod">
            <tbody>

            <tr>
                <td>Prodcut Image</td>
<%--                <td><img--%>
<%--                        src="/>"--%>
<%--                        width="40%" alt="${product.productName}"/></td>--%>
<%--            </tr>--%>
            <tr>
                <td>Prodcut ID</td>
                <td>${product.productId }</td>
            </tr>
            <tr>
                <td>Product Name</td>
                <td>${product.productName }</td>
            </tr>
            <tr>
                <td>Product Category</td>
                <td>${product.productCategory}</td>
            </tr>
            <tr>
                <td>Product Description</td>
                <td>${product.productDescription}</td>
            </tr>
            <tr>
                <td>Product Price</td>
                <td>${product.productPrice}</td>
            </tr>
            <tr>
                <td>Add to Cart:</td>
                <td><c:url value="/cart/add/${productObj.productId}"
                           var="addcart"></c:url>
                    <div ng-controller="myController">
                        <sec:authorize access="hasRole('USER')">
                            <a href="#" ng-click="addToCart(${product.productId})"
                               class="btn btn-info"
                               style="margin-top: 0px; width: 150px; float: left; margin-right: 31px;">
                                <span class="glyphicon glyphicon-shopping-cart"></span>
                            </a>
                        </sec:authorize>
                        <a href="<c:url value="/getAllProducts" />" class="btn btn-info"
                           style="margin-top: 0px; width: 150px; float: right; margin-right: 31px;">
                            <span class="glyphicon glyphicon-arrow-left"></span>
                        </a>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
<jsp:include page="../include/footer.jsp"/>
