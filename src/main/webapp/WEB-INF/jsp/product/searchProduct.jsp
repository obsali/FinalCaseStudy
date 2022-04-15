<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp" />

<h1>Search</h1>

<br>
<form action="/product/search" method="GET">
    Product Name : <input type="text" name="productName" value="${productName}">
    <button type="submit">Submit</button>
</form>

<br>

<c:if test="${not empty productName}">
    <h5>Search Results Found ${productsModelKey.size()}</h5>
    <br>
</c:if>


<table class="table">
    <tr scope="row">
        <th>Product Name</th>
        <th>Product Id</th>
        <th>Price</th>
<%--        <th>Edit</th>--%>
    </tr>
    <c:forEach items="${productsModelKey}" var="product">
        <tr scope="row">
            <td>${product.name}</td>
            <td>${product.id}</td>
            <td>${product.price}</td>
            <td><a href="/user/edit/${product.id}">Edit</a></td>
        </tr>
    </c:forEach>
</table>


<jsp:include page="../include/footer.jsp" />