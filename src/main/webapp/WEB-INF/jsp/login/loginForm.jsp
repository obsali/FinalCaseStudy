<jsp:include page="../include/header.jsp"/>
<html>
<head>
    <style>

        .input {
            padding: 10px;
            margin:10px 0;
            border: 2px solid #eee;
        }
        #form{
            padding: 1px;
            margin-left: 20px;
        }

    </style>
</head>
<body>
<h4 style="margin-left: 4rem">Log in </h4>
<form action="/login/loginSubmit" method="POST" id="form">

    Username : <input type="text" name="username" placeholder="username" class="input">
    <br>
    Password : <input type="password" name="password" placeholder="password" class="input">
    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>


<jsp:include page="../include/footer.jsp"/>