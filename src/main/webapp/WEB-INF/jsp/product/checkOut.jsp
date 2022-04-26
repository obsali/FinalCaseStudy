<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>

<head>
    <style>
        <head>
        <style>

        h1 {
            text-align: center;
            position: relative;
            top: 10px;

        }
        body {
            margin: 0;
        }

        #main {
            margin: 0 auto;
            padding: 3rem 0;
            width: 90%;
            max-width: 60rem;
        }
        form {
            box-sizing: border-box;
            padding: 3.5rem;
            border-radius: 1rem;
            background-color: hsl(0, 0%, 100%);
            border: 4px solid hsl(0, 0%, 90%);
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
        }
        #btn {
            border-radius: 0.25rem;
            cursor: pointer;
            padding: 0.75rem 1.25rem;
            margin-right: 20px;
        }
        .input {
            margin-bottom: 2.5rem;
            padding: 0.75rem 1.25rem;
        }




    </style>
</head>
    </style>
</head>
<h1>Check Out Information</h1>

<form action="/cart/addPay" method="POST">
    First Name <input name="firstname" placeholder="firstname" type="text" required>
    Last Name <input name="lastname" placeholder="lastname" type="text" required>
    Credit Card <input name="creditCard" placeholder="credit card" type="text" required>
    Shipping Address <input name="shippingAddress" placeholder="address" type="text" required>

    <button id="btn" type="submit">check</button>

</form>


<jsp:include page="../include/footer.jsp"/>