<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp" />
<html>
<head>
    <style>
        #left {
            float: left;
            width: 30%;
            height: 290px;

        }

        #middle {
            float: left;
            width: 30%;
            height: 290px;
        }

        #right {
            float: right;
            width: 30%;
            height: 290px;

        }
    </style>

</head>


<div class="container py-5">
    <div class="row">
        <div class="col-md-12 col-lg-4 mb-4 mb-lg-0" id="left">
            <div class="card text-black">
                <img
                        src="https://images.asics.com/is/image/asics/1012B069_800_SR_RT_GLB?$zoom$"
                        width="500px"
                        height="450px"
                        class="card-img-top"
                        alt="Trucker Hat"
                        img/>
                <div class="card-body">
                    <div class="text-center mt-1">
                        <h4 class="card-title">METASPEED SKY</h4>
                        <h6 class="text-primary mb-1 pb-3">$45</h6>
                    </div>

                    <button type="button" class="btn btn-danger flex-fill ms-1">Buy now</button>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4 mb-4 mb-md-0" id="middle">
        <div class="card text-black">
            <img
                    src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQ1xJpB4kVVF2ngH8UObKDCvd_kYPw9Px_Xg_8CxrrgPXv82DWj7dF98eLqX4XwVWCWQm--uzqHhHXf-jZ2K9QalwX-05-H&usqp=CAY"
                    width="500px"
                    height="450px"
                    class="card-img-top"
                    alt="Shoes"
            />
            <div class="card-body">
                <div class="text-center mt-1">
                    <h4 class="card-title">Gore-tex-ASICS Trail Shoes</h4>
                    <h6 class="text-primary mb-1 pb-3">$250</h6>
                </div>

                <button type="button" class="btn btn-danger flex-fill ms-1">Buy now</button>
            </div>
        </div>
    </div>
</div>
<div class="col-md-6 col-lg-4 mb-4 mb-md-0" id="right">
    <div class="card text-black">
        <img
                src="https://images.asics.com/is/image/asics/1012A580_700_SR_RT_GLB?$zoom$"
                width="500px"
                height="450px"
                class="card-img-top"
                alt="Asics Shorts"
        />
        <div class="card-body">
            <div class="text-center mt-1">
                <h4 class="card-title">METARACER</h4>
                <h6 class="text-primary mb-1 pb-3">$55</h6>
            </div>

            <button type="button" class="btn btn-danger flex-fill ms-1">Buy now</button>
            <button type="button" class="btn btn-danger flex-fill ms-1">Add to Cart</button>
        </div>
    </div>
</div>


</html>

<jsp:include page="../include/footer.jsp" />
