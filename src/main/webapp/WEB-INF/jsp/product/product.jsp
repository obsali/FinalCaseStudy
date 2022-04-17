<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>

<%--//In the following table, retrieve the value from--%>
<%--//each field in the current row of the results.--%>


<TABLE border=1>
<TR>
    <TH>ID</TH>
    <TD><c:out value="${row.ID}"/></TD>
    <TH>Product Name</TH>
    <TD><c:out value="${row.ID}"/></TD>
    <TH>Price</TH>
    <TD><c:out value="${row.ID}"/></TD>
    <TH>Category</TH>
    <TD><c:out value="${row.ID}"/></TD>
    <TH>imgUrl</TH>
    <TD><c:out value="${row.ID}"/></TD>
    <TH>description</TH>
    <TD><c:out value="${row.ID}"/></TD>
</TR>

<c:forEach var="row" items="productQuery.rows">

</c:forEach>
<jsp:include page="../include/footer.jsp"/>
