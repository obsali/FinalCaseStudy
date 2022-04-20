<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Added</title>
    <style>
        h1 {
            text-align: center;
            position: relative;
        }

        body {/
            margin: 0;
        }
        #main {
            margin: 0 auto;
            padding: 3rem 0;
            width: 90%;
            max-width: 60rem;
            padding: 3.5rem;
            border-radius: 1rem;
            background-color: hsl(0, 0%, 100%);
            border: 4px solid hsl(0, 0%, 90%);
            margin-top: 30px;
        }
        p{
            margin-block: 20px;
            text-align: center;
            font-size: larger;
        }
        #current_date{
            font-size: larger;
            text-align: center;
        }

    </style>
</head>
<body>
</div>
<div class="container" id="main">
    <h1>SUCCESS</h1>
    <p>You have successfully added a new product. <br>Here are your details:
        <br>
        Date added:
        <br>
    <div id="current_date"></p>
        <script>
            document.getElementById("current_date").innerHTML = Date();
        </script><br>
        <br>

</div>

</div>
</body>
</html>

<jsp:include page="../include/footer.jsp"/>