<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
        nav {
            background-color: #011c39;
            height: 80px;
            width: 100%;
        }

        label.logo {
            color: white;
            font-size: 35px;
            line-height: 80px;
            padding: 0 100px;
            font-weight: bold;
        }

        nav ul {
            float: right;
            margin-right: 20px;

        }

        nav ul li {
            display: inline-block;
            line-height: 80px;
            margin: 0 5px;

        }

        nav ul li a {
            color: white;
            font-size: 17px;
            padding: 7px 13px;
            border-radius: 3px;
            text-transform: uppercase;
        }

        a.active, a.hover {
            background: #1b9bff;
            transition: .5s;
        }

        .checkbtn {
            font-size: 30px;
            color: white;
            float: right;
            line-height: 80px;
            margin-right: 40px;
            cursor: pointer;
            display: none;
        }

        #check {
            display: none;
        }

        @media (max-width: 952px) {
            label.logo {
                font-size: 30px;
                padding-left: 50px;
            }

            nav ul li a {
                font-size: 16px;
            }
        }

        @media (max-width: 858px) {
            .checkbtn {
                display: block;
            }

            ul {
                position: fixed;
                width: 100%;
                height: 100vh;
                background: #2c3e50;
                top: 80px;
                left: -100%;
                text-align: center;
            }

            nav ul li {
                display: block;
                margin: 50px 0;
                line-height: 30px;
            }

            nav ul li a {
                font-size: 20px;
            }

            a:hover, a.active {
                background: none;
                color: #0082e6;
            }

            #check:checked ~ ul {
                left: 0;
            }
        }


    </style>
    <script src="https://kit.fontawesome.com/39f198be01.js"
            crossorigin="anonymous"></script>
</head>
<nav>

    <input type="checkbox" id="check">
    <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
    </label>
    <label class="logo">Fashionably Late Store</label>
    <ul>

        <li> <a href="/product"> Shop </a>
        </li>

        <li>
        <li><a <sec:authorize access="hasAuthority('ADMIN')">
            <a href="/user/search">Search</a>
        </sec:authorize>
        </li>

        <li>
            <sec:authorize access="!isAuthenticated()">
                <a href="/login/login">Login</a>
            </sec:authorize>
        </li>

        <li>
            <sec:authorize access="isAuthenticated()">
            <a href="/login/logout">Logout</a>

                <sec:authentication property="principal.username"/>
            </sec:authorize>


    </ul>


</nav>
</html>