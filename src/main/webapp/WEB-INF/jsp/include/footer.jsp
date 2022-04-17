<!DOCTYPE html>
<html>
<head>

    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        footer{
            justify-content: center;
            align-items: center;
            display: -webkit-flex;
            display: -moz-flex;
            display: -ms-flex;
            display: -o-flex;
            display: flex;
            flex-flow: row wrap;
            padding: 30px;
            color: #fff;
            background-color: #011c39;
            position: fixed;
            bottom: 0;
            width: 100%;
            height: 2.5rem;

        }
        .footer > *{
            flex:1 100%;
        }

        h2{
            font-weight:600;
            font-size: 17px;
        }
        .footer ul{
            position: fixed;
            right: 0;
            bottom: 0;
            left: 0;
            padding: 1rem;
            text-align: center;
        }
        .footer li{
            line-height: 2em;
        }

        .footer a{
            text-decoration: none;
        }


        /*@media screen and (mid-width: 600px) {*/
        /*    .footer-right > *{*/
        /*        flex: 1;*/
        /*    }*/
        /*    .footer-left{*/
        /*        flex: 1 0px;*/
        /*    }*/
        /*    .footer-right{*/
        /*        flex: 2 0px;*/
        /*    }*/
        /*}*/

        @media (max-width: 600px) {
            .footer{
                padding: 10px;
            }
            main{
                font-size: 55px;
            }
        }

    </style>
    <script src="https://kit.fontawesome.com/39f198be01.js"
            crossorigin="anonymous"></script>
</head>


<footer>


    <div class="footer-bottom" align="center" >
        <p>All Rights reserved by &copy; The Fashionably Late Store 2022</p>
    </div>



</footer>
</html>
