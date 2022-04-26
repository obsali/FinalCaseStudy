<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <head>
        <style>
            /*#img2 {*/
            /*    margin-top: 20px;*/
            /*}*/

            body {
                text-align: center;
                /*background-color: #f0e8c5;*/
            }

            div {
                margin-top: 15px;
            }

            .image-section {
                display: flex;
                justify-content: center;
            }

            .section-style {
                margin-right: 25px;
                margin-left: 25px;
                margin-top: 30px;
                /*background-color:lightsteelblue;*/
            }
        </style>
        <title>Home</title>
    </head>
<body>
<%--<h1>Fashionably Late Running Official Website</h1>--%>
<h4 id='date'></h4>

<%--<div class="image-section">--%>
<%--    <div class="section-style">--%>
<%--        <img  width="400" height="400" src="https://images.thenorthface.com/is/image/TheNorthFaceBrand/flight-eplp-collage-pau-2-image-d?scl=1&qlt=100" alt="" />--%>
<%--        <p>A random image courtesy of unsplash.com.</p>--%>
<%--    </div>--%>

<%--    <div class="section-style">--%>
<%--        <img width="400" height="400" src="/pub/img/IMG_4936.jpg" alt="" />--%>
<%--        <p>A random image courtesy of unsplash.com.</p>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="image-section">


    <div class="section-style">
        <h3 class="font">FIND YOUR SPEED!</h3>
        <img id="img2" style="float: right" width="450" height="450" src="/pub/img/CL80660.jpg" alt=""/>

    </div>

    <div class="section-style">
        <h3 class="font">SHOP OUR SUMMER COLLECTION!</h3>


        <img style="float: left" width="550" height="450"
             src="https://cdn.sanity.io/images/wmq4hf8k/production/94d3391f77bc4cd8bb41164e1dd4de83fa7ff3a3-4096x4096.jpg?rect=0,938,4096,2219&w=1200&h=650"
             alt=""/>
    </div>

</div>
</body>
</html>

<jsp:include page="../include/footer.jsp"/>