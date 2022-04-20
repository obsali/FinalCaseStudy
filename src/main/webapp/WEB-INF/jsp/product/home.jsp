<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <style>
        .table {
            margin-left: auto;
            margin-right: auto;
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            /*margin-left: auto;*/
            /*margin-right: auto;*/
            /*text-align: center ;*/

        }

        th, td {
            padding: 5px;
            text-align: left;
        }

        body {
            margin: 0;
        }
    </style>
</head>

<jsp:include page="../include/header.jsp"/>
<%--<table style="width:50%" class="table">--%>
<%--    <tr scope="row">--%>
<%--        <th>IMG</th>--%>
<%--        <th>Product Name</th>--%>
<%--&lt;%&ndash;        <th>Product Id</th>&ndash;%&gt;--%>
<%--        <th>Product Description</th>--%>
<%--        <th>Price</th>--%>
<%--    </tr>--%>
<%--    <c:forEach items="${allProducts}" var="product">--%>
<%--        <tr scope="row">--%>
<%--            <td>${product.imgUrl}</td>--%>
<%--            <td>${product.name}</td>--%>
<%--                &lt;%&ndash;            <td>${product.id}</td>&ndash;%&gt;--%>
<%--            <td>${product.description}</td>--%>
<%--            <td>${product.price}</td>--%>
<%--            <td><a href="/product/edit/${product.id}">Buy Now</a></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>



<div class="container">
    <div class="card-header my-3"> All Products</div>
    <div class="row">
        <div class="col-md-3">

            <c:forEach items="${allProducts}" var="product">
            <<div class="card" style="width: 18rem;">
                <img src="#" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">${product.name}</h5>
                    <h5 class="card-title">${product.price}</h5>
                    <h5 class="card-title">${product.category}</h5>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
                </div>
                    </c:forEach>
                </div>
            </div>


        </div>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<jsp:include page="../include/footer.jsp"/>
