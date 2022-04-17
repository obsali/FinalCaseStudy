<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="../include/header.jsp"/>
<h1>Add Product</h1>

<form action="/add/product" method="get">
    Id : <input type="text" name="productId" value="${form.id}">
    <br>
    Name : <input type="text" name="productName" value="${form.productName}">
    <br>
    Description : <input type="text" name="description" value="${form.description}">
    <br>
    Image URL : <input type="text" name="imageURL" value="${form.imageUrl}">
    <br>
    Price : <input type="text" name="price" value="${form.price}">
    <br>
    Category : <input type="text" name="catagory" value="${form.category}">

    <button type="submit">Submit</button>
</form>

<c:if test="${bindingResult.hasErrors()}">
    <br>

    <c:forEach items="${bindingResult.getAllErrors()}" var="error">
        <div style="color:red;">${error.getDefaultMessage()}</div>
    </c:forEach>
</c:if>


<jsp:include page="../include/footer.jsp"/>
