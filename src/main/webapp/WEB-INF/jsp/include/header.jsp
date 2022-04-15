<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        #form{
            margin-top: 22px;
        }
    </style>
    <meta charset="utf-8">
    <title>Fashionably Late Official Site</title>
</head>

<script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

<body>

<div style="background: #E0E0E0; height: 55px; padding: 5px;">
    <div style="float: left">
        <h1>The Late Store</h1>
    </div>

    <div style="float: right; padding: 10px; text-align: right;">

        <!-- User store in session with attribute: loginUser -->
        <b>
            <span>Hello</span>
            &nbsp; | &nbsp
        </b>

        <form action="/user/search" method="GET" id="form">
            Product Name : <input type="text" name="productName" value="${productName}">
            <button type="submit">Search</button>
        </form>


    </div>

</div>

<div class="container">

    <a href="/index">Index</a> &nbsp; | &nbsp;
    <%--    <a href="/ajax">AJAX Example</a> &nbsp; | &nbsp;--%>
    <%--    <a href="/upload">Upload Example</a> &nbsp; | &nbsp;--%>
    <a href="/user/register">Sign Up</a>
    <a href="/product/search">Search Product</a>

    <sec:authorize access="hasAuthority('ADMIN')">
    &nbsp; | &nbsp;<a href="/user/search">Search</a>
    </sec:authorize>

    <sec:authorize access="!isAuthenticated()">
    &nbsp; | &nbsp; <a href="/login/login">Login</a>
    </sec:authorize>


    <sec:authorize access="isAuthenticated()">
    &nbsp; | &nbsp; <a href="/login/logout">Logout</a>
    &nbsp; | &nbsp;

<%--        <sec:authentication property="principal.username"/>--%>

    </sec:authorize>

    <hr>
